// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The request was rejected because the most recent credential report has expired. To
///       generate a new credential report, use <a>GenerateCredentialReport</a>. For more
///       information about credential report expiration, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html">Getting credential reports</a> in the
///         <i>IAM User Guide</i>.</p>
public struct CredentialReportExpiredException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    public var message: String?

    public init (
        message: String? = nil
    )
    {
        self.message = message
    }
}

extension CredentialReportExpiredException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CredentialReportExpiredException(message: \(String(describing: message)))"}
}