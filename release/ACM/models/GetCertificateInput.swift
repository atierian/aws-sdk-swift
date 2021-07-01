// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetCertificateInput: Equatable {
    /// <p>String that contains a certificate ARN in the following format:</p>
    ///          <p>
    ///             <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code>
    ///          </p>
    ///          <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>.</p>
    public let certificateArn: String?

    public init (
        certificateArn: String? = nil
    )
    {
        self.certificateArn = certificateArn
    }
}

extension GetCertificateInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetCertificateInput(certificateArn: \(String(describing: certificateArn)))"}
}