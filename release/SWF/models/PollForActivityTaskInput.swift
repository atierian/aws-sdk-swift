// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct PollForActivityTaskInput: Equatable {
    /// <p>The name of the domain that contains the task lists being polled.</p>
    public let domain: String?
    /// <p>Identity of the worker making the request, recorded in the
    ///         <code>ActivityTaskStarted</code> event in the workflow history. This enables diagnostic
    ///       tracing when problems arise. The form of this identity is user defined.</p>
    public let identity: String?
    /// <p>Specifies the task list to poll for activity tasks.</p>
    ///
    ///          <p>The specified string must not start or end with whitespace. It must not contain a
    ///         <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any
    ///       control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must
    ///       not <i>be</i> the literal string <code>arn</code>.</p>
    public let taskList: TaskList?

    public init (
        domain: String? = nil,
        identity: String? = nil,
        taskList: TaskList? = nil
    )
    {
        self.domain = domain
        self.identity = identity
        self.taskList = taskList
    }
}

extension PollForActivityTaskInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PollForActivityTaskInput(domain: \(String(describing: domain)), identity: \(String(describing: identity)), taskList: \(String(describing: taskList)))"}
}