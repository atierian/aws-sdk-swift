// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A request to submit new account details.</p>
public struct PutAccountDetailsInput: Equatable {
    /// <p>Additional email addresses that you would like to be notified regarding Amazon SES
    ///             matters.</p>
    public let additionalContactEmailAddresses: [String]?
    /// <p>The language you would prefer to be contacted with.</p>
    public let contactLanguage: ContactLanguage?
    /// <p>The type of email your account will send.</p>
    public let mailType: MailType?
    /// <p>Indicates whether or not your account should have production access in the current
    ///             AWS Region.</p>
    ///         <p>If the value is <code>false</code>, then your account is in the
    ///                 <i>sandbox</i>. When your account is in the sandbox, you can only send
    ///             email to verified identities. Additionally, the maximum number of emails you can send in
    ///             a 24-hour period (your sending quota) is 200, and the maximum number of emails you can
    ///             send per second (your maximum sending rate) is 1.</p>
    ///         <p>If the value is <code>true</code>, then your account has production access. When your
    ///             account has production access, you can send email to any address. The sending quota and
    ///             maximum sending rate for your account vary based on your specific use case.</p>
    public let productionAccessEnabled: Bool?
    /// <p>A description of the types of email that you plan to send.</p>
    public let useCaseDescription: String?
    /// <p>The URL of your website. This information helps us better understand the type of
    ///             content that you plan to send.</p>
    public let websiteURL: String?

    public init (
        additionalContactEmailAddresses: [String]? = nil,
        contactLanguage: ContactLanguage? = nil,
        mailType: MailType? = nil,
        productionAccessEnabled: Bool? = nil,
        useCaseDescription: String? = nil,
        websiteURL: String? = nil
    )
    {
        self.additionalContactEmailAddresses = additionalContactEmailAddresses
        self.contactLanguage = contactLanguage
        self.mailType = mailType
        self.productionAccessEnabled = productionAccessEnabled
        self.useCaseDescription = useCaseDescription
        self.websiteURL = websiteURL
    }
}

extension PutAccountDetailsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PutAccountDetailsInput(additionalContactEmailAddresses: \(String(describing: additionalContactEmailAddresses)), contactLanguage: \(String(describing: contactLanguage)), mailType: \(String(describing: mailType)), productionAccessEnabled: \(String(describing: productionAccessEnabled)), useCaseDescription: \(String(describing: useCaseDescription)), websiteURL: \(String(describing: websiteURL)))"}
}