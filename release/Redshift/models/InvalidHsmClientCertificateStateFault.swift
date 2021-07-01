// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The specified HSM client certificate is not in the <code>available</code> state, or
///             it is still in use by one or more Amazon Redshift clusters.</p>
public struct InvalidHsmClientCertificateStateFault: ClientRuntime.ServiceError, Equatable {
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

extension InvalidHsmClientCertificateStateFault: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InvalidHsmClientCertificateStateFault(message: \(String(describing: message)))"}
}