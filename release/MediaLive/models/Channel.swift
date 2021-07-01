// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Placeholder documentation for Channel
public struct Channel: Equatable {
    /// The unique arn of the channel.
    public let arn: String?
    /// Specification of CDI inputs for this channel
    public let cdiInputSpecification: CdiInputSpecification?
    /// The class for this channel. STANDARD for a channel with two pipelines or SINGLE_PIPELINE for a channel with one pipeline.
    public let channelClass: ChannelClass?
    /// A list of destinations of the channel. For UDP outputs, there is one
    /// destination per output. For other types (HLS, for example), there is
    /// one destination per packager.
    public let destinations: [OutputDestination]?
    /// The endpoints where outgoing connections initiate from
    public let egressEndpoints: [ChannelEgressEndpoint]?
    /// Encoder Settings
    public let encoderSettings: EncoderSettings?
    /// The unique id of the channel.
    public let id: String?
    /// List of input attachments for channel.
    public let inputAttachments: [InputAttachment]?
    /// Specification of network and file inputs for this channel
    public let inputSpecification: InputSpecification?
    /// The log level being written to CloudWatch Logs.
    public let logLevel: LogLevel?
    /// The name of the channel. (user-mutable)
    public let name: String?
    /// Runtime details for the pipelines of a running channel.
    public let pipelineDetails: [PipelineDetail]?
    /// The number of currently healthy pipelines.
    public let pipelinesRunningCount: Int
    /// The Amazon Resource Name (ARN) of the role assumed when running the Channel.
    public let roleArn: String?
    /// Placeholder documentation for ChannelState
    public let state: ChannelState?
    /// A collection of key-value pairs.
    public let tags: [String:String]?
    /// Settings for VPC output
    public let vpc: VpcOutputSettingsDescription?

    public init (
        arn: String? = nil,
        cdiInputSpecification: CdiInputSpecification? = nil,
        channelClass: ChannelClass? = nil,
        destinations: [OutputDestination]? = nil,
        egressEndpoints: [ChannelEgressEndpoint]? = nil,
        encoderSettings: EncoderSettings? = nil,
        id: String? = nil,
        inputAttachments: [InputAttachment]? = nil,
        inputSpecification: InputSpecification? = nil,
        logLevel: LogLevel? = nil,
        name: String? = nil,
        pipelineDetails: [PipelineDetail]? = nil,
        pipelinesRunningCount: Int = 0,
        roleArn: String? = nil,
        state: ChannelState? = nil,
        tags: [String:String]? = nil,
        vpc: VpcOutputSettingsDescription? = nil
    )
    {
        self.arn = arn
        self.cdiInputSpecification = cdiInputSpecification
        self.channelClass = channelClass
        self.destinations = destinations
        self.egressEndpoints = egressEndpoints
        self.encoderSettings = encoderSettings
        self.id = id
        self.inputAttachments = inputAttachments
        self.inputSpecification = inputSpecification
        self.logLevel = logLevel
        self.name = name
        self.pipelineDetails = pipelineDetails
        self.pipelinesRunningCount = pipelinesRunningCount
        self.roleArn = roleArn
        self.state = state
        self.tags = tags
        self.vpc = vpc
    }
}

extension Channel: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Channel(arn: \(String(describing: arn)), cdiInputSpecification: \(String(describing: cdiInputSpecification)), channelClass: \(String(describing: channelClass)), destinations: \(String(describing: destinations)), egressEndpoints: \(String(describing: egressEndpoints)), encoderSettings: \(String(describing: encoderSettings)), id: \(String(describing: id)), inputAttachments: \(String(describing: inputAttachments)), inputSpecification: \(String(describing: inputSpecification)), logLevel: \(String(describing: logLevel)), name: \(String(describing: name)), pipelineDetails: \(String(describing: pipelineDetails)), pipelinesRunningCount: \(String(describing: pipelinesRunningCount)), roleArn: \(String(describing: roleArn)), state: \(String(describing: state)), tags: \(String(describing: tags)), vpc: \(String(describing: vpc)))"}
}