// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The request was rejected because the public key certificate and the private key do not
///       match.</p>
public struct KeyPairMismatchException: ClientRuntime.ServiceError, Equatable {
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

extension KeyPairMismatchException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "KeyPairMismatchException(message: \(String(describing: message)))"}
}