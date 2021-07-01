// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>This exception is thrown when Amazon Cognito cannot find a multi-factor authentication
///             (MFA) method.</p>
public struct MFAMethodNotFoundException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    /// <p>The message returned when Amazon Cognito throws an MFA method not found
    ///             exception.</p>
    public var message: String?

    public init (
        message: String? = nil
    )
    {
        self.message = message
    }
}

extension MFAMethodNotFoundException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "MFAMethodNotFoundException(message: \(String(describing: message)))"}
}