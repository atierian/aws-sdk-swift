// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateWirelessGatewayOutputResponse: Equatable {
    /// <p>The Amazon Resource Name of the new resource.</p>
    public let arn: String?
    /// <p>The ID of the new wireless gateway.</p>
    public let id: String?

    public init (
        arn: String? = nil,
        id: String? = nil
    )
    {
        self.arn = arn
        self.id = id
    }
}

extension CreateWirelessGatewayOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateWirelessGatewayOutputResponse(arn: \(String(describing: arn)), id: \(String(describing: id)))"}
}