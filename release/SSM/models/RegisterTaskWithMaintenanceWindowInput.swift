// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct RegisterTaskWithMaintenanceWindowInput: Equatable {
    /// <p>User-provided idempotency token.</p>
    public var clientToken: String?
    /// <p>An optional description for the task.</p>
    public let description: String?
    /// <p>A structure containing information about an S3 bucket to write instance-level logs to. </p>
    ///          <note>
    ///             <p>
    ///                <code>LoggingInfo</code> has been deprecated. To specify an S3 bucket to contain logs, instead use the
    ///       <code>OutputS3BucketName</code> and <code>OutputS3KeyPrefix</code> options in the <code>TaskInvocationParameters</code> structure.
    ///       For information about how Systems Manager handles these options for the supported maintenance
    ///       window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
    ///          </note>
    public let loggingInfo: LoggingInfo?
    /// <p>The maximum number of targets this task can be run for in parallel.</p>
    ///          <note>
    ///             <p>For maintenance window tasks without a target specified, you cannot supply a value for this
    ///     option. Instead, the system inserts a placeholder value of <code>1</code>. This value does not
    ///     affect the running of your task.</p>
    ///          </note>
    public let maxConcurrency: String?
    /// <p>The maximum number of errors allowed before this task stops being scheduled.</p>
    ///          <note>
    ///             <p>For maintenance window tasks without a target specified, you cannot supply a value for this
    ///     option. Instead, the system inserts a placeholder value of <code>1</code>. This value does not
    ///     affect the running of your task.</p>
    ///          </note>
    public let maxErrors: String?
    /// <p>An optional name for the task.</p>
    public let name: String?
    /// <p>The priority of the task in the maintenance window, the lower the number the higher the
    ///    priority. Tasks in a maintenance window are scheduled in priority order with tasks that have the
    ///    same priority scheduled in parallel.</p>
    public let priority: Int
    /// <p>The ARN of the IAM service role for Systems Manager to assume when running a
    ///   maintenance window task. If you do not specify a service role ARN, Systems Manager uses your account's
    ///   service-linked role.  If no service-linked role for Systems Manager exists in your account, it is created when you run
    ///   <code>RegisterTaskWithMaintenanceWindow</code>.</p>
    ///          <p>For more information, see the following topics in the in the <i>AWS Systems Manager User Guide</i>:</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/using-service-linked-roles.html#slr-permissions">Using
    ///     service-linked roles for Systems Manager</a>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-maintenance-permissions.html#maintenance-window-tasks-service-role">Should I use a service-linked role or a custom service role to run maintenance window tasks?
    ///    </a>
    ///                </p>
    ///             </li>
    ///          </ul>
    public let serviceRoleArn: String?
    /// <p>The targets (either instances or maintenance window targets).</p>
    ///          <note>
    ///             <p>One or more targets must be specified for maintenance window Run Command-type tasks.
    ///     Depending on the task, targets are optional for other maintenance window task types (Automation,
    ///     AWS Lambda, and AWS Step Functions). For more information about running tasks that do not
    ///     specify targets, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html">Registering
    ///      maintenance window tasks without targets</a> in the
    ///     <i>AWS Systems Manager User Guide</i>.</p>
    ///          </note>
    ///          <p>Specify instances using the following format: </p>
    ///          <p>
    ///             <code>Key=InstanceIds,Values=<instance-id-1>,<instance-id-2></code>
    ///          </p>
    ///          <p>Specify maintenance window targets using the following format:</p>
    ///          <p>
    ///             <code>Key=WindowTargetIds,Values=<window-target-id-1>,<window-target-id-2></code>
    ///          </p>
    public let targets: [Target]?
    /// <p>The ARN of the task to run.</p>
    public let taskArn: String?
    /// <p>The parameters that the task should use during execution. Populate only the fields that
    ///    match the task type. All other fields should be empty. </p>
    public let taskInvocationParameters: MaintenanceWindowTaskInvocationParameters?
    /// <p>The parameters that should be passed to the task when it is run.</p>
    ///          <note>
    ///             <p>
    ///                <code>TaskParameters</code> has been deprecated. To specify parameters to pass to a task when it runs,
    ///       instead use the <code>Parameters</code> option in the <code>TaskInvocationParameters</code> structure. For information
    ///       about how Systems Manager handles these options for the supported maintenance window task
    ///       types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
    ///          </note>
    public let taskParameters: [String:MaintenanceWindowTaskParameterValueExpression]?
    /// <p>The type of task being registered.</p>
    public let taskType: MaintenanceWindowTaskType?
    /// <p>The ID of the maintenance window the task should be added to.</p>
    public let windowId: String?

    public init (
        clientToken: String? = nil,
        description: String? = nil,
        loggingInfo: LoggingInfo? = nil,
        maxConcurrency: String? = nil,
        maxErrors: String? = nil,
        name: String? = nil,
        priority: Int = 0,
        serviceRoleArn: String? = nil,
        targets: [Target]? = nil,
        taskArn: String? = nil,
        taskInvocationParameters: MaintenanceWindowTaskInvocationParameters? = nil,
        taskParameters: [String:MaintenanceWindowTaskParameterValueExpression]? = nil,
        taskType: MaintenanceWindowTaskType? = nil,
        windowId: String? = nil
    )
    {
        self.clientToken = clientToken
        self.description = description
        self.loggingInfo = loggingInfo
        self.maxConcurrency = maxConcurrency
        self.maxErrors = maxErrors
        self.name = name
        self.priority = priority
        self.serviceRoleArn = serviceRoleArn
        self.targets = targets
        self.taskArn = taskArn
        self.taskInvocationParameters = taskInvocationParameters
        self.taskParameters = taskParameters
        self.taskType = taskType
        self.windowId = windowId
    }
}

extension RegisterTaskWithMaintenanceWindowInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RegisterTaskWithMaintenanceWindowInput(clientToken: \(String(describing: clientToken)), description: \(String(describing: description)), loggingInfo: \(String(describing: loggingInfo)), maxConcurrency: \(String(describing: maxConcurrency)), maxErrors: \(String(describing: maxErrors)), name: \(String(describing: name)), priority: \(String(describing: priority)), serviceRoleArn: \(String(describing: serviceRoleArn)), targets: \(String(describing: targets)), taskArn: \(String(describing: taskArn)), taskInvocationParameters: \(String(describing: taskInvocationParameters)), taskParameters: \(String(describing: taskParameters)), taskType: \(String(describing: taskType)), windowId: \(String(describing: windowId)))"}
}