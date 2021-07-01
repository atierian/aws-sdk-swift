// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetGroupCertificateAuthorityOutputResponse: Equatable {
    /// The ARN of the certificate authority for the group.
    public let groupCertificateAuthorityArn: String?
    /// The ID of the certificate authority for the group.
    public let groupCertificateAuthorityId: String?
    /// The PEM encoded certificate for the group.
    public let pemEncodedCertificate: String?

    public init (
        groupCertificateAuthorityArn: String? = nil,
        groupCertificateAuthorityId: String? = nil,
        pemEncodedCertificate: String? = nil
    )
    {
        self.groupCertificateAuthorityArn = groupCertificateAuthorityArn
        self.groupCertificateAuthorityId = groupCertificateAuthorityId
        self.pemEncodedCertificate = pemEncodedCertificate
    }
}

extension GetGroupCertificateAuthorityOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetGroupCertificateAuthorityOutputResponse(groupCertificateAuthorityArn: \(String(describing: groupCertificateAuthorityArn)), groupCertificateAuthorityId: \(String(describing: groupCertificateAuthorityId)), pemEncodedCertificate: \(String(describing: pemEncodedCertificate)))"}
}