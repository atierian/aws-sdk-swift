// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Lambda was unable to decrypt the environment variables because the KMS key used is in an invalid state for
///       Decrypt. Check the function's KMS key settings.</p>
public struct KMSInvalidStateException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .server
    public var message: String?
    public var type: String?

    public init (
        message: String? = nil,
        type: String? = nil
    )
    {
        self.message = message
        self.type = type
    }
}

extension KMSInvalidStateException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "KMSInvalidStateException(message: \(String(describing: message)), type: \(String(describing: type)))"}
}