// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Describes a transit gateway.</p>
public struct TransitGateway: Equatable {
    /// <p>The creation time.</p>
    public let creationTime: Date?
    /// <p>The description of the transit gateway.</p>
    public let description: String?
    /// <p>The transit gateway options.</p>
    public let options: TransitGatewayOptions?
    /// <p>The ID of the AWS account ID that owns the transit gateway.</p>
    public let ownerId: String?
    /// <p>The state of the transit gateway.</p>
    public let state: TransitGatewayState?
    /// <p>The tags for the transit gateway.</p>
    public let tags: [Tag]?
    /// <p>The Amazon Resource Name (ARN) of the transit gateway.</p>
    public let transitGatewayArn: String?
    /// <p>The ID of the transit gateway.</p>
    public let transitGatewayId: String?

    public init (
        creationTime: Date? = nil,
        description: String? = nil,
        options: TransitGatewayOptions? = nil,
        ownerId: String? = nil,
        state: TransitGatewayState? = nil,
        tags: [Tag]? = nil,
        transitGatewayArn: String? = nil,
        transitGatewayId: String? = nil
    )
    {
        self.creationTime = creationTime
        self.description = description
        self.options = options
        self.ownerId = ownerId
        self.state = state
        self.tags = tags
        self.transitGatewayArn = transitGatewayArn
        self.transitGatewayId = transitGatewayId
    }
}

extension TransitGateway: CustomDebugStringConvertible {
    public var debugDescription: String {
        "TransitGateway(creationTime: \(String(describing: creationTime)), description: \(String(describing: description)), options: \(String(describing: options)), ownerId: \(String(describing: ownerId)), state: \(String(describing: state)), tags: \(String(describing: tags)), transitGatewayArn: \(String(describing: transitGatewayArn)), transitGatewayId: \(String(describing: transitGatewayId)))"}
}