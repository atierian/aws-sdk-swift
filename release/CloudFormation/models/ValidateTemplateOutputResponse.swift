// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The output for <a>ValidateTemplate</a> action.</p>
public struct ValidateTemplateOutputResponse: Equatable {
    /// <p>The capabilities found within the template. If your template contains IAM resources,
    ///          you must specify the CAPABILITY_IAM or CAPABILITY_NAMED_IAM value for this parameter when
    ///          you use the <a>CreateStack</a> or <a>UpdateStack</a> actions with
    ///          your template; otherwise, those actions return an InsufficientCapabilities error.</p>
    ///          <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities">Acknowledging IAM Resources in AWS CloudFormation Templates</a>.</p>
    public let capabilities: [Capability]?
    /// <p>The list of resources that generated the values in the <code>Capabilities</code>
    ///          response element.</p>
    public let capabilitiesReason: String?
    /// <p>A list of the transforms that are declared in the template.</p>
    public let declaredTransforms: [String]?
    /// <p>The description found within the template.</p>
    public let description: String?
    /// <p>A list of <code>TemplateParameter</code> structures.</p>
    public let parameters: [TemplateParameter]?

    public init (
        capabilities: [Capability]? = nil,
        capabilitiesReason: String? = nil,
        declaredTransforms: [String]? = nil,
        description: String? = nil,
        parameters: [TemplateParameter]? = nil
    )
    {
        self.capabilities = capabilities
        self.capabilitiesReason = capabilitiesReason
        self.declaredTransforms = declaredTransforms
        self.description = description
        self.parameters = parameters
    }
}

extension ValidateTemplateOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ValidateTemplateOutputResponse(capabilities: \(String(describing: capabilities)), capabilitiesReason: \(String(describing: capabilitiesReason)), declaredTransforms: \(String(describing: declaredTransforms)), description: \(String(describing: description)), parameters: \(String(describing: parameters)))"}
}