// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DiscoverPollEndpointOutputResponse: Equatable {
    /// <p>The endpoint for the Amazon ECS agent to poll.</p>
    public let endpoint: String?
    /// <p>The telemetry endpoint for the Amazon ECS agent.</p>
    public let telemetryEndpoint: String?

    public init (
        endpoint: String? = nil,
        telemetryEndpoint: String? = nil
    )
    {
        self.endpoint = endpoint
        self.telemetryEndpoint = telemetryEndpoint
    }
}

extension DiscoverPollEndpointOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DiscoverPollEndpointOutputResponse(endpoint: \(String(describing: endpoint)), telemetryEndpoint: \(String(describing: telemetryEndpoint)))"}
}