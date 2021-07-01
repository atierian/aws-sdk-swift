// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeResourceOutputResponse: Equatable {
    /// <p>A structure containing information about an AWS Lake Formation resource.</p>
    public let resourceInfo: ResourceInfo?

    public init (
        resourceInfo: ResourceInfo? = nil
    )
    {
        self.resourceInfo = resourceInfo
    }
}

extension DescribeResourceOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeResourceOutputResponse(resourceInfo: \(String(describing: resourceInfo)))"}
}