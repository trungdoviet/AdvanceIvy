package ch.axonivy.util;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Callable;

import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.StringUtils;

import ch.ivyteam.ivy.application.IApplication;
import ch.ivyteam.ivy.application.IProcessModel;
import ch.ivyteam.ivy.application.IProcessModelVersion;
import ch.ivyteam.ivy.cm.IContentManagementSystem;
import ch.ivyteam.ivy.cm.IContentObjectValue;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.security.ISecurityManager;
import ch.ivyteam.ivy.security.SecurityManagerFactory;
import ch.ivyteam.ivy.server.ServerFactory;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonSyntaxException;


public class TaskName {
	private String cmsPath;
	private List<Object> params;
	
	private TaskName(String cmsPath) {
		this.cmsPath = cmsPath;
		this.params = null;
	}
	
	private TaskName(String cmsPath, Object... params) {
		this(cmsPath);
		this.params = Arrays.asList(params);
	}
	
	public static TaskName from(String cmsPath, Object... params) {
		if(StringUtils.isBlank(cmsPath)) {
			throw new IllegalArgumentException("CMS path must be defined!");
		}
		return ArrayUtils.isNotEmpty(params) ? new TaskName(cmsPath, params) : new TaskName(cmsPath);
	}
	
	public String toJsonString() {
		return new GsonBuilder().create().toJson(this);
	}
	
	public static TaskName fromJson(String json) {
		if(StringUtils.isBlank(json)) {
			throw new IllegalArgumentException("Json data is null or empty");
		}
		try {
			return new Gson().fromJson(json, TaskName.class);
		} catch(JsonSyntaxException ex) {
			Ivy.log().warn("Could not parse {0} to TaskName. It will originally display on task list", json);
		}
		return null;
	}
	
	public String toString() {
		String builtTaskName = buildTaskName();
		
		if(StringUtils.isBlank(builtTaskName)) {
			ISecurityManager securityManager = SecurityManagerFactory.getSecurityManager();
			try {
				builtTaskName = securityManager.executeAsSystem(new CmsFinderCallable());
			} catch (Exception e) {
				Ivy.log().error(e);
			}
			if(StringUtils.isNotBlank(builtTaskName)) {
				return MessageFormat.format(builtTaskName, params.toArray());
			}
		}
		return StringUtils.isNotBlank(builtTaskName) ? builtTaskName : StringUtils.EMPTY;
		
	}
	
	private String buildTaskName() {
		if(CollectionUtils.isEmpty(params)) {
			return Ivy.cms().co(cmsPath);
		}
		return Ivy.cms().co(cmsPath, params);
	}
	
	private class CmsFinderCallable implements Callable<String> {

	    private final static String PORTALKIT_LIBRARY = "ch.ivyteam.ivy.project.portal:portalKit";

	    @Override
	    public String call() throws Exception {
	      for (IProcessModelVersion pmv : allReachablePmvs()) {
	        IContentManagementSystem cms = Ivy.cms().getContentManagement().findCms(pmv);
	        IContentObjectValue contentObjectValue =
	            cms.getContentObjectValue(cmsPath, Ivy.session().getContentLocale());
	        if (contentObjectValue != null) {
	          return contentObjectValue.getContentAsString();
	        }
	      }
	      return StringUtils.EMPTY;
	    }

	    private List<IProcessModelVersion> allReachablePmvs() {
	      IApplication application =
	          ServerFactory.getServer().getApplicationConfigurationManager().findApplication(Ivy.request().getApplication().getName());
	      List<IProcessModelVersion> pmvs = new ArrayList<IProcessModelVersion>();
	      for (IProcessModel pm : application.getProcessModels()) {
	        IProcessModelVersion releasedPmv = pm.getReleasedProcessModelVersion();
	        if (releasedPmv != null) {
	          String libraryId = releasedPmv.getLibrary().getId();
	          if (!PORTALKIT_LIBRARY.equals(libraryId)) {
	            pmvs.add(releasedPmv);
	          }
	        }
	      }
	      return pmvs;
	    }
	  }
}

