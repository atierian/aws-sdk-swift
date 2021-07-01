// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateCertificateInput: Equatable {
    /// <p>The name for the certificate.</p>
    public let certificateName: String?
    /// <p>The domain name (e.g., <code>example.com</code>) for the certificate.</p>
    public let domainName: String?
    /// <p>An array of strings that specify the alternate domains (e.g., <code>example2.com</code>)
    ///       and subdomains (e.g., <code>blog.example.com</code>) for the certificate.</p>
    ///          <p>You can specify a maximum of nine alternate domains (in addition to the primary domain
    ///       name).</p>
    ///          <p>Wildcard domain entries (e.g., <code>*.example.com</code>) are not supported.</p>
    public let subjectAlternativeNames: [String]?
    /// <p>The tag keys and optional values to add to the certificate during create.</p>
    ///          <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>
    public let tags: [Tag]?

    public init (
        certificateName: String? = nil,
        domainName: String? = nil,
        subjectAlternativeNames: [String]? = nil,
        tags: [Tag]? = nil
    )
    {
        self.certificateName = certificateName
        self.domainName = domainName
        self.subjectAlternativeNames = subjectAlternativeNames
        self.tags = tags
    }
}

extension CreateCertificateInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateCertificateInput(certificateName: \(String(describing: certificateName)), domainName: \(String(describing: domainName)), subjectAlternativeNames: \(String(describing: subjectAlternativeNames)), tags: \(String(describing: tags)))"}
}