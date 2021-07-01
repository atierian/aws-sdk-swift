// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateEndpointWeightsAndCapacitiesOutputResponse: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the updated endpoint.</p>
    public let endpointArn: String?

    public init (
        endpointArn: String? = nil
    )
    {
        self.endpointArn = endpointArn
    }
}

extension UpdateEndpointWeightsAndCapacitiesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateEndpointWeightsAndCapacitiesOutputResponse(endpointArn: \(String(describing: endpointArn)))"}
}