package ch.axonivy.ivyteam.SimpleTaskList;

/**
 */
@SuppressWarnings("all")
@javax.annotation.Generated(comments="This is the java file of the ivy data class SimpleTaskListData", value={"ch.ivyteam.ivy.scripting.streamInOut.IvyScriptJavaClassBuilder"})
public class SimpleTaskListData extends ch.ivyteam.ivy.scripting.objects.CompositeObject
{
  /** SerialVersionUID */
  private static final long serialVersionUID = 4419962110788229332L;

  private java.util.List<ch.ivyteam.ivy.workflow.ITask> tasks;

  /**
   * Gets the field tasks.
   * @return the value of the field tasks; may be null.
   */
  public java.util.List<ch.ivyteam.ivy.workflow.ITask> getTasks()
  {
    return tasks;
  }

  /**
   * Sets the field tasks.
   * @param _tasks the new value of the field tasks.
   */
  public void setTasks(java.util.List<ch.ivyteam.ivy.workflow.ITask> _tasks)
  {
    tasks = _tasks;
  }

  private java.util.List<java.lang.String> tasksOnDisplays;

  /**
   * Gets the field tasksOnDisplays.
   * @return the value of the field tasksOnDisplays; may be null.
   */
  public java.util.List<java.lang.String> getTasksOnDisplays()
  {
    return tasksOnDisplays;
  }

  /**
   * Sets the field tasksOnDisplays.
   * @param _tasksOnDisplays the new value of the field tasksOnDisplays.
   */
  public void setTasksOnDisplays(java.util.List<java.lang.String> _tasksOnDisplays)
  {
    tasksOnDisplays = _tasksOnDisplays;
  }

}
