// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The following elements are returned by the service.</p>
public struct ListCustomVerificationEmailTemplatesOutputResponse: Equatable {
    /// <p>A list of the custom verification email templates that exist in your account.</p>
    public let customVerificationEmailTemplates: [CustomVerificationEmailTemplateMetadata]?
    /// <p>A token indicating that there are additional custom verification email templates
    ///             available to be listed. Pass this token to a subsequent call to
    ///                 <code>ListCustomVerificationEmailTemplates</code> to retrieve the next 50 custom
    ///             verification email templates.</p>
    public let nextToken: String?

    public init (
        customVerificationEmailTemplates: [CustomVerificationEmailTemplateMetadata]? = nil,
        nextToken: String? = nil
    )
    {
        self.customVerificationEmailTemplates = customVerificationEmailTemplates
        self.nextToken = nextToken
    }
}

extension ListCustomVerificationEmailTemplatesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListCustomVerificationEmailTemplatesOutputResponse(customVerificationEmailTemplates: \(String(describing: customVerificationEmailTemplates)), nextToken: \(String(describing: nextToken)))"}
}