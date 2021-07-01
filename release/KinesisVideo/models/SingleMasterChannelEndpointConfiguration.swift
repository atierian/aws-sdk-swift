// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>An object that contains the endpoint configuration for the <code>SINGLE_MASTER</code>
///             channel type. </p>
public struct SingleMasterChannelEndpointConfiguration: Equatable {
    /// <p>This property is used to determine the nature of communication over this
    ///                 <code>SINGLE_MASTER</code> signaling channel. If <code>WSS</code> is specified, this
    ///             API returns a websocket endpoint. If <code>HTTPS</code> is specified, this API returns
    ///             an <code>HTTPS</code> endpoint.</p>
    public let protocols: [ChannelProtocol]?
    /// <p>This property is used to determine messaging permissions in this
    ///                 <code>SINGLE_MASTER</code> signaling channel. If <code>MASTER</code> is specified,
    ///             this API returns an endpoint that a client can use to receive offers from and send
    ///             answers to any of the viewers on this signaling channel. If <code>VIEWER</code> is
    ///             specified, this API returns an endpoint that a client can use only to send offers to
    ///             another <code>MASTER</code> client on this signaling channel. </p>
    public let role: ChannelRole?

    public init (
        protocols: [ChannelProtocol]? = nil,
        role: ChannelRole? = nil
    )
    {
        self.protocols = protocols
        self.role = role
    }
}

extension SingleMasterChannelEndpointConfiguration: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SingleMasterChannelEndpointConfiguration(protocols: \(String(describing: protocols)), role: \(String(describing: role)))"}
}