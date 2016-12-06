[Ivy]
[>Created: Tue Nov 01 13:50:43 ICT 2016]
1581E752F787A7C5 3.18 #module
>Proto >Proto Collection #zClass
Ss0 SimpleTaskListProcess Big #zClass
Ss0 RD #cInfo
Ss0 #process
Ss0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ss0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ss0 @TextInP .resExport .resExport #zField
Ss0 @TextInP .type .type #zField
Ss0 @TextInP .processKind .processKind #zField
Ss0 @AnnotationInP-0n ai ai #zField
Ss0 @MessageFlowInP-0n messageIn messageIn #zField
Ss0 @MessageFlowOutP-0n messageOut messageOut #zField
Ss0 @TextInP .xml .xml #zField
Ss0 @TextInP .responsibility .responsibility #zField
Ss0 @RichDialogInitStart f0 '' #zField
Ss0 @RichDialogProcessEnd f1 '' #zField
Ss0 @RichDialogProcessStart f3 '' #zField
Ss0 @RichDialogEnd f4 '' #zField
Ss0 @PushWFArc f5 '' #zField
Ss0 @GridStep f6 '' #zField
Ss0 @PushWFArc f7 '' #zField
Ss0 @PushWFArc f2 '' #zField
>Proto Ss0 Ss0 SimpleTaskListProcess #zField
Ss0 f0 guid 1581E752F89C7B28 #txt
Ss0 f0 type ch.axonivy.ivyteam.SimpleTaskList.SimpleTaskListData #txt
Ss0 f0 method start() #txt
Ss0 f0 disableUIEvents true #txt
Ss0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ss0 f0 outParameterDecl '<> result;
' #txt
Ss0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ss0 f0 83 51 26 26 -16 15 #rect
Ss0 f0 @|RichDialogInitStartIcon #fIcon
Ss0 f1 type ch.axonivy.ivyteam.SimpleTaskList.SimpleTaskListData #txt
Ss0 f1 339 51 26 26 0 12 #rect
Ss0 f1 @|RichDialogProcessEndIcon #fIcon
Ss0 f3 guid 1581E752F9754518 #txt
Ss0 f3 type ch.axonivy.ivyteam.SimpleTaskList.SimpleTaskListData #txt
Ss0 f3 actionDecl 'ch.axonivy.ivyteam.SimpleTaskList.SimpleTaskListData out;
' #txt
Ss0 f3 actionTable 'out=in;
' #txt
Ss0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Ss0 f3 83 147 26 26 -15 12 #rect
Ss0 f3 @|RichDialogProcessStartIcon #fIcon
Ss0 f4 type ch.axonivy.ivyteam.SimpleTaskList.SimpleTaskListData #txt
Ss0 f4 guid 1581E752F9776837 #txt
Ss0 f4 211 147 26 26 0 12 #rect
Ss0 f4 @|RichDialogEndIcon #fIcon
Ss0 f5 expr out #txt
Ss0 f5 109 160 211 160 #arcP
Ss0 f6 actionDecl 'ch.axonivy.ivyteam.SimpleTaskList.SimpleTaskListData out;
' #txt
Ss0 f6 actionTable 'out=in;
' #txt
Ss0 f6 actionCode 'import ch.ivyteam.ivy.workflow.ITask;
import ch.axonivy.util.TaskUtils;
in.tasks = TaskUtils.findTaskOfSessionUser(0,-1,null,org.primefaces.model.SortOrder.ASCENDING,false,null);

for(int i = 0; i < in.tasks.size(); i++) {
	ITask task = in.tasks.get(i);
	in.tasksOnDisplays.add(task.getName());
}' #txt
Ss0 f6 type ch.axonivy.ivyteam.SimpleTaskList.SimpleTaskListData #txt
Ss0 f6 168 42 112 44 0 -8 #rect
Ss0 f6 @|StepIcon #fIcon
Ss0 f7 expr out #txt
Ss0 f7 109 64 168 64 #arcP
Ss0 f2 expr out #txt
Ss0 f2 280 64 339 64 #arcP
>Proto Ss0 .type ch.axonivy.ivyteam.SimpleTaskList.SimpleTaskListData #txt
>Proto Ss0 .processKind HTML_DIALOG #txt
>Proto Ss0 -8 -8 16 16 16 26 #rect
>Proto Ss0 '' #fIcon
Ss0 f3 mainOut f5 tail #connect
Ss0 f5 head f4 mainIn #connect
Ss0 f0 mainOut f7 tail #connect
Ss0 f7 head f6 mainIn #connect
Ss0 f6 mainOut f2 tail #connect
Ss0 f2 head f1 mainIn #connect
