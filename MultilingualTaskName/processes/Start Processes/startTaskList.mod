[Ivy]
[>Created: Tue Nov 01 13:43:06 ICT 2016]
1581E74A367DB084 3.18 #module
>Proto >Proto Collection #zClass
st0 startTaskList Big #zClass
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
st0 @PushWFArc f2 '' #zField
>Proto st0 st0 startTaskList #zField
st0 f0 outLink start.ivp #txt
st0 f0 type ch.axonivy.ivyteam.startTaskListData #txt
st0 f0 inParamDecl '<> param;' #txt
st0 f0 actionDecl 'ch.axonivy.ivyteam.startTaskListData out;
' #txt
st0 f0 guid 1581E74A36B6ACC1 #txt
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
st0 f1 type ch.axonivy.ivyteam.startTaskListData #txt
st0 f1 353 49 30 30 0 15 #rect
st0 f1 @|EndIcon #fIcon
st0 f3 targetWindow NEW:card: #txt
st0 f3 targetDisplay TOP #txt
st0 f3 richDialogId ch.axonivy.ivyteam.SimpleTaskList #txt
st0 f3 startMethod start() #txt
st0 f3 type ch.axonivy.ivyteam.startTaskListData #txt
st0 f3 requestActionDecl '<> param;' #txt
st0 f3 responseActionDecl 'ch.axonivy.ivyteam.startTaskListData out;
' #txt
st0 f3 responseMappingAction 'out=in;
' #txt
st0 f3 windowConfiguration '* ' #txt
st0 f3 isAsynch false #txt
st0 f3 isInnerRd false #txt
st0 f3 userContext '* ' #txt
st0 f3 184 42 112 44 0 -8 #rect
st0 f3 @|RichDialogIcon #fIcon
st0 f4 expr out #txt
st0 f4 111 64 184 64 #arcP
st0 f2 expr out #txt
st0 f2 296 64 353 64 #arcP
>Proto st0 .type ch.axonivy.ivyteam.startTaskListData #txt
>Proto st0 .processKind NORMAL #txt
>Proto st0 0 0 32 24 18 0 #rect
>Proto st0 @|BIcon #fIcon
st0 f0 mainOut f4 tail #connect
st0 f4 head f3 mainIn #connect
st0 f3 mainOut f2 tail #connect
st0 f2 head f1 mainIn #connect
