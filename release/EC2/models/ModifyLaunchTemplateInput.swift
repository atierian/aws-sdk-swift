// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ModifyLaunchTemplateInput: Equatable {
    /// <p>Unique, case-sensitive identifier you provide to ensure the idempotency of the
    ///             request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring
    ///                 Idempotency</a>.</p>
    ///         <p>Constraint: Maximum 128 ASCII characters.</p>
    public let clientToken: String?
    /// <p>The version number of the launch template to set as the default version.</p>
    public let defaultVersion: String?
    /// <p>Checks whether you have the required permissions for the action, without actually
    ///             making the request, and provides an error response. If you have the required
    ///             permissions, the error response is <code>DryRunOperation</code>. Otherwise, it is
    ///                 <code>UnauthorizedOperation</code>.</p>
    public let dryRun: Bool
    /// <p>The ID of the launch template. You must specify either the launch template ID or
    ///             launch template name in the request.</p>
    public let launchTemplateId: String?
    /// <p>The name of the launch template. You must specify either the launch template ID or
    ///             launch template name in the request.</p>
    public let launchTemplateName: String?

    public init (
        clientToken: String? = nil,
        defaultVersion: String? = nil,
        dryRun: Bool = false,
        launchTemplateId: String? = nil,
        launchTemplateName: String? = nil
    )
    {
        self.clientToken = clientToken
        self.defaultVersion = defaultVersion
        self.dryRun = dryRun
        self.launchTemplateId = launchTemplateId
        self.launchTemplateName = launchTemplateName
    }
}

extension ModifyLaunchTemplateInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ModifyLaunchTemplateInput(clientToken: \(String(describing: clientToken)), defaultVersion: \(String(describing: defaultVersion)), dryRun: \(String(describing: dryRun)), launchTemplateId: \(String(describing: launchTemplateId)), launchTemplateName: \(String(describing: launchTemplateName)))"}
}