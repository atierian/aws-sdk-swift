// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListCustomRoutingPortMappingsOutputResponse: Equatable {
    /// <p>The token for the next set of results. You receive this token from a previous call.</p>
    public let nextToken: String?
    /// <p>The port mappings for a custom routing accelerator.</p>
    public let portMappings: [PortMapping]?

    public init (
        nextToken: String? = nil,
        portMappings: [PortMapping]? = nil
    )
    {
        self.nextToken = nextToken
        self.portMappings = portMappings
    }
}

extension ListCustomRoutingPortMappingsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListCustomRoutingPortMappingsOutputResponse(nextToken: \(String(describing: nextToken)), portMappings: \(String(describing: portMappings)))"}
}