package ch.axonivy.util;

import java.util.EnumSet;
import java.util.List;

import org.primefaces.model.SortOrder;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.persistence.IQueryResult;
import ch.ivyteam.ivy.persistence.OrderDirection;
import ch.ivyteam.ivy.workflow.IPropertyFilter;
import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.PropertyOrder;
import ch.ivyteam.ivy.workflow.TaskProperty;
import ch.ivyteam.ivy.workflow.TaskState;

public class TaskUtils {
	public static List<ITask> findTaskOfSessionUser(int startIndex, int pageSize, String sortField, SortOrder sortOrder,
		      boolean isHistory, IPropertyFilter<TaskProperty> taskFilter) {
		    Ivy ivy = Ivy.getInstance();
		    IQueryResult<ITask> queryResult;
		    
		    List<PropertyOrder<TaskProperty>> taskPropertyOrder =
		        PropertyOrder.create(getTaskProperty(sortField), getTaskDirection(sortOrder));
		    if (isHistory) {
		      queryResult = ivy.session.findWorkedOnTasks(taskFilter, taskPropertyOrder, startIndex, pageSize, true);
		    } else {
		  
		      queryResult =
		          ivy.session.findWorkTasks(taskFilter, taskPropertyOrder, startIndex, pageSize, true,
		              EnumSet.of(TaskState.SUSPENDED, TaskState.RESUMED, TaskState.PARKED));
		    }

		    List<ITask> tasks = queryResult.getResultList();
		    tasks.get(0).getStartProcessData()
		    return tasks;
		  }
	
	/**
	   * Get the sort field and set set sort ID by default if input is null
	   * 
	   * @param sortField : Field to sort the task list
	   * @return TaskProperty : The properties of a task
	   */
	  public static TaskProperty getTaskProperty(String sortField) {
	    TaskProperty taskProperty = TaskProperty.ID;
	    if (sortField != null) {
	      taskProperty = TaskProperty.valueOf(sortField);
	    }
	    return taskProperty;
	  }

	  /**
	   * Get the Sort order and set ASCENDING by default if input is null
	   * 
	   * @param sortOrder : Field to sort the task list
	   * @return OrderDirection : Defines the order direction
	   */
	  public static OrderDirection getTaskDirection(SortOrder sortOrder) {
	    OrderDirection direction;
	    switch (sortOrder) {
	      case DESCENDING:
	        direction = OrderDirection.DESCENDING;
	        break;
	      default:
	        direction = OrderDirection.ASCENDING;
	    }
	    return direction;
	  }
}
