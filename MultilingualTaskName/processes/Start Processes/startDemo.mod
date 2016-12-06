[Ivy]
[>Created: Tue Nov 08 17:53:14 ICT 2016]
1581E4BD63C52AA4 3.18 #module
>Proto >Proto Collection #zClass
st0 startDemo Big #zClass
st0 B #cInfo
st0 #process
st0 @TextInP .resExport .resExport #zField
st0 @TextInP .type .type #zField
st0 @TextInP .processKind .processKind #zField
st0 @AnnotationInP-0n ai ai #zField
st0 @MessageFlowInP-0n messageIn messageIn #zField
st0 @MessageFlowOutP-0n messageOut messageOut #zField
st0 @TextInP .xml .xml #zField
st0 @TextInP .responsibility .responsibility #zField
st0 @StartRequest f0 '' #zField
st0 @EndTask f1 '' #zField
st0 @RichDialog f3 '' #zField
st0 @PushWFArc f4 '' #zField
st0 @UserTask f2 '' #zField
st0 @TkArc f9 '' #zField
st0 @PushWFArc f8 '' #zField
>Proto st0 st0 startDemo #zField
st0 f0 outLink start.ivp #txt
st0 f0 type ch.axonivy.ivyteam.Data #txt
st0 f0 inParamDecl '<> param;' #txt
st0 f0 actionDecl 'ch.axonivy.ivyteam.Data out;
' #txt
st0 f0 guid 1581E4BD652BD94E #txt
st0 f0 requestEnabled true #txt
st0 f0 triggerEnabled false #txt
st0 f0 callSignature start() #txt
st0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
st0 f0 @C|.responsibility Everybody #txt
st0 f0 81 49 30 30 -21 17 #rect
st0 f0 @|StartRequestIcon #fIcon
st0 f1 type ch.axonivy.ivyteam.Data #txt
st0 f1 625 49 30 30 0 15 #rect
st0 f1 @|EndIcon #fIcon
st0 f3 targetWindow NEW:card: #txt
st0 f3 targetDisplay TOP #txt
st0 f3 richDialogId ch.axonivy.ivyteam.SampleTaskName #txt
st0 f3 startMethod start() #txt
st0 f3 type ch.axonivy.ivyteam.Data #txt
st0 f3 requestActionDecl '<> param;' #txt
st0 f3 responseActionDecl 'ch.axonivy.ivyteam.Data out;
' #txt
st0 f3 responseMappingAction 'out=in;
out.taskName=result.taskname;
' #txt
st0 f3 windowConfiguration '* ' #txt
st0 f3 isAsynch false #txt
st0 f3 isInnerRd false #txt
st0 f3 userContext '* ' #txt
st0 f3 168 42 112 44 0 -8 #rect
st0 f3 @|RichDialogIcon #fIcon
st0 f4 expr out #txt
st0 f4 111 64 168 64 #arcP
st0 f2 richDialogId ch.axonivy.ivyteam.TaskDetail #txt
st0 f2 startMethod start(ch.axonivy.ivyteam.startTaskListData) #txt
st0 f2 requestActionDecl '<ch.axonivy.ivyteam.startTaskListData taskListData> param;' #txt
st0 f2 requestActionCode 'ivy.log.info("===tssk:" + ivy.task.getState());' #txt
st0 f2 responseActionDecl 'ch.axonivy.ivyteam.Data out;
' #txt
st0 f2 responseMappingAction 'out=in;
' #txt
st0 f2 outLinks "TaskA.ivp" #txt
st0 f2 taskData 'TaskA.EXPRI=2
TaskA.EXROL=Everybody
TaskA.EXTYPE=0
TaskA.NAM=<%\=ch.axonivy.util.TaskName.from("/ch/axonivy/taskName/SampleTaskName",in.taskName).toJsonString()%>
TaskA.PRI=2
TaskA.ROL=Admin
TaskA.SKIP_TASK_LIST=false
TaskA.TYPE=0' #txt
st0 f2 type ch.axonivy.ivyteam.Data #txt
st0 f2 424 42 112 44 0 -8 #rect
st0 f2 @|UserTaskIcon #fIcon
st0 f9 expr out #txt
st0 f9 type ch.axonivy.ivyteam.Data #txt
st0 f9 var in1 #txt
st0 f9 280 64 424 64 #arcP
st0 f9 0 0.5150997188888808 0 0 #arcLabel
st0 f8 expr data #txt
st0 f8 outCond ivp=="TaskA.ivp" #txt
st0 f8 536 64 625 64 #arcP
>Proto st0 .type ch.axonivy.ivyteam.Data #txt
>Proto st0 .processKind NORMAL #txt
>Proto st0 0 0 32 24 18 0 #rect
>Proto st0 @|BIcon #fIcon
st0 f0 mainOut f4 tail #connect
st0 f4 head f3 mainIn #connect
st0 f2 out f8 tail #connect
st0 f8 head f1 mainIn #connect
st0 f3 mainOut f9 tail #connect
st0 f9 head f2 in #connect
