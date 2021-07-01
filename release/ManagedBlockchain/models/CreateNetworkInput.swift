// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateNetworkInput: Equatable {
    /// <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the operation. An idempotent operation completes no more than one time. This identifier is required only if you make a service request directly using an HTTP client. It is generated automatically if you use an AWS SDK or the AWS CLI.</p>
    public var clientRequestToken: String?
    /// <p>An optional description for the network.</p>
    public let description: String?
    /// <p>The blockchain framework that the network uses.</p>
    public let framework: Framework?
    /// <p>
    ///          Configuration properties of the blockchain framework relevant to the network configuration.
    ///       </p>
    public let frameworkConfiguration: NetworkFrameworkConfiguration?
    /// <p>The version of the blockchain framework that the network uses.</p>
    public let frameworkVersion: String?
    /// <p>Configuration properties for the first member within the network.</p>
    public let memberConfiguration: MemberConfiguration?
    /// <p>The name of the network.</p>
    public let name: String?
    /// <p>Tags to assign to the network. Each tag consists of a key and optional value.</p>
    ///          <p>When specifying tags during creation, you can specify multiple key-value pairs in a single request, with an overall maximum of 50 tags added to each resource.</p>
    ///          <p>For more information about tags, see <a href="https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Ethereum Developer Guide</i>, or <a href="https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html">Tagging Resources</a> in the <i>Amazon Managed Blockchain Hyperledger Fabric Developer Guide</i>.</p>
    public let tags: [String:String]?
    /// <p>
    ///          The voting rules used by the network to determine if a proposal is approved.
    ///       </p>
    public let votingPolicy: VotingPolicy?

    public init (
        clientRequestToken: String? = nil,
        description: String? = nil,
        framework: Framework? = nil,
        frameworkConfiguration: NetworkFrameworkConfiguration? = nil,
        frameworkVersion: String? = nil,
        memberConfiguration: MemberConfiguration? = nil,
        name: String? = nil,
        tags: [String:String]? = nil,
        votingPolicy: VotingPolicy? = nil
    )
    {
        self.clientRequestToken = clientRequestToken
        self.description = description
        self.framework = framework
        self.frameworkConfiguration = frameworkConfiguration
        self.frameworkVersion = frameworkVersion
        self.memberConfiguration = memberConfiguration
        self.name = name
        self.tags = tags
        self.votingPolicy = votingPolicy
    }
}

extension CreateNetworkInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateNetworkInput(clientRequestToken: \(String(describing: clientRequestToken)), description: \(String(describing: description)), framework: \(String(describing: framework)), frameworkConfiguration: \(String(describing: frameworkConfiguration)), frameworkVersion: \(String(describing: frameworkVersion)), memberConfiguration: \(String(describing: memberConfiguration)), name: \(String(describing: name)), tags: \(String(describing: tags)), votingPolicy: \(String(describing: votingPolicy)))"}
}