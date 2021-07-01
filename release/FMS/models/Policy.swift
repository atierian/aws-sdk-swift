// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>An AWS Firewall Manager policy.</p>
public struct Policy: Equatable {
    /// <p>Specifies the AWS account IDs and AWS Organizations organizational units (OUs) to exclude from the policy.
    ///           Specifying an OU is the equivalent of specifying all accounts in the OU and in any of its child OUs, including any child OUs and accounts that are added at a later time.</p>
    ///               <p>You can specify inclusions or exclusions, but not both. If you specify an <code>IncludeMap</code>, AWS Firewall Manager
    ///           applies the policy to all accounts specified by the <code>IncludeMap</code>, and
    ///           does not evaluate any <code>ExcludeMap</code> specifications. If you do not specify an <code>IncludeMap</code>, then Firewall Manager
    ///             applies the policy to all accounts except for those specified by the <code>ExcludeMap</code>.</p>
    ///          <p>You can specify account IDs, OUs, or a combination: </p>
    ///          <ul>
    ///             <li>
    ///                <p>Specify account IDs by setting the key to <code>ACCOUNT</code>. For example, the following is a valid map:
    ///       <code>{“ACCOUNT” : [“accountID1”, “accountID2”]}</code>.</p>
    ///             </li>
    ///             <li>
    ///                <p>Specify OUs by setting the key to <code>ORG_UNIT</code>. For example, the following is a valid map:
    ///   <code>{“ORG_UNIT” : [“ouid111”, “ouid112”]}</code>.</p>
    ///             </li>
    ///             <li>
    ///                <p>Specify accounts and OUs together in a single map, separated with a comma. For example, the following is a valid map:
    ///       <code>{“ACCOUNT” : [“accountID1”, “accountID2”], “ORG_UNIT” : [“ouid111”, “ouid112”]}</code>.</p>
    ///             </li>
    ///          </ul>
    public let excludeMap: [String:[String]]?
    /// <p>If set to <code>True</code>, resources with the tags that are specified in the
    ///         <code>ResourceTag</code> array are not in scope of the policy. If set to <code>False</code>,
    ///       and the <code>ResourceTag</code> array is not null, only resources with the specified tags are
    ///       in scope of the policy.</p>
    public let excludeResourceTags: Bool
    /// <p>Specifies the AWS account IDs and AWS Organizations organizational units (OUs) to include in the policy.
    ///           Specifying an OU is the equivalent of specifying all accounts in the OU and in any of its child OUs, including any child OUs and accounts that are added at a later time.</p>
    ///               <p>You can specify inclusions or exclusions, but not both. If you specify an <code>IncludeMap</code>, AWS Firewall Manager
    ///           applies the policy to all accounts specified by the <code>IncludeMap</code>, and
    ///           does not evaluate any <code>ExcludeMap</code> specifications. If you do not specify an <code>IncludeMap</code>, then Firewall Manager
    ///             applies the policy to all accounts except for those specified by the <code>ExcludeMap</code>.</p>
    ///          <p>You can specify account IDs, OUs, or a combination: </p>
    ///          <ul>
    ///             <li>
    ///                <p>Specify account IDs by setting the key to <code>ACCOUNT</code>. For example, the following is a valid map:
    ///       <code>{“ACCOUNT” : [“accountID1”, “accountID2”]}</code>.</p>
    ///             </li>
    ///             <li>
    ///                <p>Specify OUs by setting the key to <code>ORG_UNIT</code>. For example, the following is a valid map:
    ///   <code>{“ORG_UNIT” : [“ouid111”, “ouid112”]}</code>.</p>
    ///             </li>
    ///             <li>
    ///                <p>Specify accounts and OUs together in a single map, separated with a comma. For example, the following is a valid map:
    ///       <code>{“ACCOUNT” : [“accountID1”, “accountID2”], “ORG_UNIT” : [“ouid111”, “ouid112”]}</code>.</p>
    ///             </li>
    ///          </ul>
    public let includeMap: [String:[String]]?
    /// <p>The ID of the AWS Firewall Manager policy.</p>
    public let policyId: String?
    /// <p>The name of the AWS Firewall Manager policy.</p>
    public let policyName: String?
    /// <p>A unique identifier for each update to the policy. When issuing a <code>PutPolicy</code>
    ///       request, the <code>PolicyUpdateToken</code> in the request must match the
    ///         <code>PolicyUpdateToken</code> of the current policy version. To get the
    ///         <code>PolicyUpdateToken</code> of the current policy version, use a <code>GetPolicy</code>
    ///       request.</p>
    public let policyUpdateToken: String?
    /// <p>Indicates if the policy should be automatically applied to new resources.</p>
    public let remediationEnabled: Bool
    /// <p>An array of <code>ResourceTag</code> objects.</p>
    public let resourceTags: [ResourceTag]?
    /// <p>The type of resource protected by or in scope of the policy. This is in the format shown
    ///         in the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">AWS Resource Types Reference</a>.
    ///             For AWS WAF and Shield Advanced, examples include
    ///         <code>AWS::ElasticLoadBalancingV2::LoadBalancer</code> and
    ///         <code>AWS::CloudFront::Distribution</code>. For a security group common policy, valid values
    ///       are <code>AWS::EC2::NetworkInterface</code> and <code>AWS::EC2::Instance</code>. For a
    ///       security group content audit policy, valid values are <code>AWS::EC2::SecurityGroup</code>,
    ///         <code>AWS::EC2::NetworkInterface</code>, and <code>AWS::EC2::Instance</code>. For a security
    ///             group usage audit policy, the value is <code>AWS::EC2::SecurityGroup</code>. For an AWS Network Firewall policy,
    ///                 the value is <code>AWS::EC2::VPC</code>.</p>
    public let resourceType: String?
    /// <p>An array of <code>ResourceType</code>.</p>
    public let resourceTypeList: [String]?
    /// <p>Details about the security service that is being used to protect the resources.</p>
    public let securityServicePolicyData: SecurityServicePolicyData?

    public init (
        excludeMap: [String:[String]]? = nil,
        excludeResourceTags: Bool = false,
        includeMap: [String:[String]]? = nil,
        policyId: String? = nil,
        policyName: String? = nil,
        policyUpdateToken: String? = nil,
        remediationEnabled: Bool = false,
        resourceTags: [ResourceTag]? = nil,
        resourceType: String? = nil,
        resourceTypeList: [String]? = nil,
        securityServicePolicyData: SecurityServicePolicyData? = nil
    )
    {
        self.excludeMap = excludeMap
        self.excludeResourceTags = excludeResourceTags
        self.includeMap = includeMap
        self.policyId = policyId
        self.policyName = policyName
        self.policyUpdateToken = policyUpdateToken
        self.remediationEnabled = remediationEnabled
        self.resourceTags = resourceTags
        self.resourceType = resourceType
        self.resourceTypeList = resourceTypeList
        self.securityServicePolicyData = securityServicePolicyData
    }
}

extension Policy: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Policy(excludeMap: \(String(describing: excludeMap)), excludeResourceTags: \(String(describing: excludeResourceTags)), includeMap: \(String(describing: includeMap)), policyId: \(String(describing: policyId)), policyName: \(String(describing: policyName)), policyUpdateToken: \(String(describing: policyUpdateToken)), remediationEnabled: \(String(describing: remediationEnabled)), resourceTags: \(String(describing: resourceTags)), resourceType: \(String(describing: resourceType)), resourceTypeList: \(String(describing: resourceTypeList)), securityServicePolicyData: \(String(describing: securityServicePolicyData)))"}
}