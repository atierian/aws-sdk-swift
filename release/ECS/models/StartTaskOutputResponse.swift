// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct StartTaskOutputResponse: Equatable {
    /// <p>Any failures associated with the call.</p>
    public let failures: [Failure]?
    /// <p>A full description of the tasks that were started. Each task that was successfully
    /// 			placed on your container instances is described.</p>
    public let tasks: [Task]?

    public init (
        failures: [Failure]? = nil,
        tasks: [Task]? = nil
    )
    {
        self.failures = failures
        self.tasks = tasks
    }
}

extension StartTaskOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "StartTaskOutputResponse(failures: \(String(describing: failures)), tasks: \(String(describing: tasks)))"}
}