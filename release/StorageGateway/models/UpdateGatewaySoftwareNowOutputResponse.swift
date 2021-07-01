// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A JSON object containing the Amazon Resource Name (ARN) of the gateway that was
///          updated.</p>
public struct UpdateGatewaySoftwareNowOutputResponse: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    ///          operation to return a list of gateways for your account and AWS Region.</p>
    public let gatewayARN: String?

    public init (
        gatewayARN: String? = nil
    )
    {
        self.gatewayARN = gatewayARN
    }
}

extension UpdateGatewaySoftwareNowOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateGatewaySoftwareNowOutputResponse(gatewayARN: \(String(describing: gatewayARN)))"}
}