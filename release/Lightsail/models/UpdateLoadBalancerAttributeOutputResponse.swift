// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateLoadBalancerAttributeOutputResponse: Equatable {
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

extension UpdateLoadBalancerAttributeOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateLoadBalancerAttributeOutputResponse(operations: \(String(describing: operations)))"}
}