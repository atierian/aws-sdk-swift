// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateAccessPolicyInput: Equatable {
    /// <p>The identity for this access policy. Choose an AWS SSO user, an AWS SSO group, or an IAM user.</p>
    public let accessPolicyIdentity: Identity?
    /// <p>The permission level for this access policy. Note that a project <code>ADMINISTRATOR</code> is also known as a project owner.</p>
    public let accessPolicyPermission: Permission?
    /// <p>The AWS IoT SiteWise Monitor resource for this access policy. Choose either a portal or a project.</p>
    public let accessPolicyResource: Resource?
    /// <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    public var clientToken: String?
    /// <p>A list of key-value pairs that contain metadata for the access policy. For more
    ///       information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your
    ///         AWS IoT SiteWise resources</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>
    public let tags: [String:String]?

    public init (
        accessPolicyIdentity: Identity? = nil,
        accessPolicyPermission: Permission? = nil,
        accessPolicyResource: Resource? = nil,
        clientToken: String? = nil,
        tags: [String:String]? = nil
    )
    {
        self.accessPolicyIdentity = accessPolicyIdentity
        self.accessPolicyPermission = accessPolicyPermission
        self.accessPolicyResource = accessPolicyResource
        self.clientToken = clientToken
        self.tags = tags
    }
}

extension CreateAccessPolicyInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateAccessPolicyInput(accessPolicyIdentity: \(String(describing: accessPolicyIdentity)), accessPolicyPermission: \(String(describing: accessPolicyPermission)), accessPolicyResource: \(String(describing: accessPolicyResource)), clientToken: \(String(describing: clientToken)), tags: \(String(describing: tags)))"}
}