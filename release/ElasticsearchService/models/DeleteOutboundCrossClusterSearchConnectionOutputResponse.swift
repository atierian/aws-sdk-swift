// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The result of a <code><a>DeleteOutboundCrossClusterSearchConnection</a></code> operation. Contains details of deleted outbound connection.</p>
public struct DeleteOutboundCrossClusterSearchConnectionOutputResponse: Equatable {
    /// <p>Specifies the <code><a>OutboundCrossClusterSearchConnection</a></code> of deleted outbound connection. </p>
    public let crossClusterSearchConnection: OutboundCrossClusterSearchConnection?

    public init (
        crossClusterSearchConnection: OutboundCrossClusterSearchConnection? = nil
    )
    {
        self.crossClusterSearchConnection = crossClusterSearchConnection
    }
}

extension DeleteOutboundCrossClusterSearchConnectionOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteOutboundCrossClusterSearchConnectionOutputResponse(crossClusterSearchConnection: \(String(describing: crossClusterSearchConnection)))"}
}