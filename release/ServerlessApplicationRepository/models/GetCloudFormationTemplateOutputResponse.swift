// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetCloudFormationTemplateOutputResponse: Equatable {
    /// <p>The application Amazon Resource Name (ARN).</p>
    public let applicationId: String?
    /// <p>The date and time this resource was created.</p>
    public let creationTime: String?
    /// <p>The date and time this template expires. Templates
    ///  expire 1 hour after creation.</p>
    public let expirationTime: String?
    /// <p>The semantic version of the application:</p><p>
    ///  <a href="https://semver.org/">https://semver.org/</a>
    ///  </p>
    public let semanticVersion: String?
    /// <p>Status of the template creation workflow.</p><p>Possible values: PREPARING | ACTIVE | EXPIRED
    ///  </p>
    public let status: Status?
    /// <p>The UUID returned by CreateCloudFormationTemplate.</p><p>Pattern: [0-9a-fA-F]{8}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{12}</p>
    public let templateId: String?
    /// <p>A link to the template that can be used to deploy the application using
    ///  AWS CloudFormation.</p>
    public let templateUrl: String?

    public init (
        applicationId: String? = nil,
        creationTime: String? = nil,
        expirationTime: String? = nil,
        semanticVersion: String? = nil,
        status: Status? = nil,
        templateId: String? = nil,
        templateUrl: String? = nil
    )
    {
        self.applicationId = applicationId
        self.creationTime = creationTime
        self.expirationTime = expirationTime
        self.semanticVersion = semanticVersion
        self.status = status
        self.templateId = templateId
        self.templateUrl = templateUrl
    }
}

extension GetCloudFormationTemplateOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetCloudFormationTemplateOutputResponse(applicationId: \(String(describing: applicationId)), creationTime: \(String(describing: creationTime)), expirationTime: \(String(describing: expirationTime)), semanticVersion: \(String(describing: semanticVersion)), status: \(String(describing: status)), templateId: \(String(describing: templateId)), templateUrl: \(String(describing: templateUrl)))"}
}