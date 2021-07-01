// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The tags associated with a load balancer.</p>
public struct TagDescription: Equatable {
    /// <p>The name of the load balancer.</p>
    public let loadBalancerName: String?
    /// <p>The tags.</p>
    public let tags: [Tag]?

    public init (
        loadBalancerName: String? = nil,
        tags: [Tag]? = nil
    )
    {
        self.loadBalancerName = loadBalancerName
        self.tags = tags
    }
}

extension TagDescription: CustomDebugStringConvertible {
    public var debugDescription: String {
        "TagDescription(loadBalancerName: \(String(describing: loadBalancerName)), tags: \(String(describing: tags)))"}
}