// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DetachDiskOutputResponse: Equatable {
    /// <p>An array of objects that describe the result of the action, such as the status of the
    ///       request, the timestamp of the request, and the resources affected by the request.</p>
    public let operations: [Operation]?

    public init (
        operations: [Operation]? = nil
    )
    {
        self.operations = operations
    }
}

extension DetachDiskOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DetachDiskOutputResponse(operations: \(String(describing: operations)))"}
}