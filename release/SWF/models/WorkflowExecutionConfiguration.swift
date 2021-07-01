// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The configuration settings for a workflow execution including timeout values, tasklist etc. These configuration settings are determined from the defaults specified when registering the workflow type and those specified when starting the workflow execution.</p>
public struct WorkflowExecutionConfiguration: Equatable {
    /// <p>The policy to use for the child workflow executions if this workflow execution is terminated, by calling the
    ///       <a>TerminateWorkflowExecution</a> action explicitly or due to an expired timeout.</p>
    ///          <p>The supported child policies are:</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>TERMINATE</code> – The child executions are terminated.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child
    ///   execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider
    ///   to take appropriate actions when it receives an execution history with this event.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>ABANDON</code> – No action is taken. The child executions continue to run.</p>
    ///             </li>
    ///          </ul>
    public let childPolicy: ChildPolicy?
    /// <p>The total duration for this workflow execution.</p>
    ///          <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    public let executionStartToCloseTimeout: String?
    /// <p>The IAM role attached to the child workflow execution.</p>
    public let lambdaRole: String?
    /// <p>The task list used for the decision tasks generated for this workflow execution.</p>
    public let taskList: TaskList?
    /// <p>The priority assigned to decision tasks for this workflow execution. Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code>
    ///   (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p>
    ///          <p>For more information about setting task priority, see <a href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>
    public let taskPriority: String?
    /// <p>The maximum duration allowed for decision tasks for this workflow execution.</p>
    ///          <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
    public let taskStartToCloseTimeout: String?

    public init (
        childPolicy: ChildPolicy? = nil,
        executionStartToCloseTimeout: String? = nil,
        lambdaRole: String? = nil,
        taskList: TaskList? = nil,
        taskPriority: String? = nil,
        taskStartToCloseTimeout: String? = nil
    )
    {
        self.childPolicy = childPolicy
        self.executionStartToCloseTimeout = executionStartToCloseTimeout
        self.lambdaRole = lambdaRole
        self.taskList = taskList
        self.taskPriority = taskPriority
        self.taskStartToCloseTimeout = taskStartToCloseTimeout
    }
}

extension WorkflowExecutionConfiguration: CustomDebugStringConvertible {
    public var debugDescription: String {
        "WorkflowExecutionConfiguration(childPolicy: \(String(describing: childPolicy)), executionStartToCloseTimeout: \(String(describing: executionStartToCloseTimeout)), lambdaRole: \(String(describing: lambdaRole)), taskList: \(String(describing: taskList)), taskPriority: \(String(describing: taskPriority)), taskStartToCloseTimeout: \(String(describing: taskStartToCloseTimeout)))"}
}