// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// The output that you want to add to this flow.
public struct AddOutputRequest: Equatable {
    /// The protocol to use for the output.
    public let `protocol`: `Protocol`?
    /// The range of IP addresses that should be allowed to initiate output requests to this flow. These IP addresses should be in the form of a Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16.
    public let cidrAllowList: [String]?
    /// A description of the output. This description appears only on the AWS Elemental MediaConnect console and will not be seen by the end user.
    public let description: String?
    /// The IP address from which video will be sent to output destinations.
    public let destination: String?
    /// The type of key used for the encryption. If no keyType is provided, the service will use the default setting (static-key).
    public let encryption: Encryption?
    /// The maximum latency in milliseconds for Zixi-based streams.
    public let maxLatency: Int
    /// The media streams that are associated with the output, and the parameters for those associations.
    public let mediaStreamOutputConfigurations: [MediaStreamOutputConfigurationRequest]?
    /// The minimum latency in milliseconds for SRT-based streams. In streams that use the SRT protocol, this value that you set on your MediaConnect source or output represents the minimal potential latency of that connection. The latency of the stream is set to the highest number between the sender’s minimum latency and the receiver’s minimum latency.
    public let minLatency: Int
    /// The name of the output. This value must be unique within the current flow.
    public let name: String?
    /// The port to use when content is distributed to this output.
    public let port: Int
    /// The remote ID for the Zixi-pull output stream.
    public let remoteId: String?
    /// The smoothing latency in milliseconds for RIST, RTP, and RTP-FEC streams.
    public let smoothingLatency: Int
    /// The stream ID that you want to use for this transport. This parameter applies only to Zixi-based streams.
    public let streamId: String?
    /// The name of the VPC interface attachment to use for this output.
    public let vpcInterfaceAttachment: VpcInterfaceAttachment?

    public init (
        `protocol`: `Protocol`? = nil,
        cidrAllowList: [String]? = nil,
        description: String? = nil,
        destination: String? = nil,
        encryption: Encryption? = nil,
        maxLatency: Int = 0,
        mediaStreamOutputConfigurations: [MediaStreamOutputConfigurationRequest]? = nil,
        minLatency: Int = 0,
        name: String? = nil,
        port: Int = 0,
        remoteId: String? = nil,
        smoothingLatency: Int = 0,
        streamId: String? = nil,
        vpcInterfaceAttachment: VpcInterfaceAttachment? = nil
    )
    {
        self.`protocol` = `protocol`
        self.cidrAllowList = cidrAllowList
        self.description = description
        self.destination = destination
        self.encryption = encryption
        self.maxLatency = maxLatency
        self.mediaStreamOutputConfigurations = mediaStreamOutputConfigurations
        self.minLatency = minLatency
        self.name = name
        self.port = port
        self.remoteId = remoteId
        self.smoothingLatency = smoothingLatency
        self.streamId = streamId
        self.vpcInterfaceAttachment = vpcInterfaceAttachment
    }
}

extension AddOutputRequest: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AddOutputRequest(cidrAllowList: \(String(describing: cidrAllowList)), description: \(String(describing: description)), destination: \(String(describing: destination)), encryption: \(String(describing: encryption)), maxLatency: \(String(describing: maxLatency)), mediaStreamOutputConfigurations: \(String(describing: mediaStreamOutputConfigurations)), minLatency: \(String(describing: minLatency)), name: \(String(describing: name)), port: \(String(describing: port)), protocol: \(String(describing: `protocol`)), remoteId: \(String(describing: remoteId)), smoothingLatency: \(String(describing: smoothingLatency)), streamId: \(String(describing: streamId)), vpcInterfaceAttachment: \(String(describing: vpcInterfaceAttachment)))"}
}