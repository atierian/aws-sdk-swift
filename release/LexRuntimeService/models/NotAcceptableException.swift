// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The accept header in the request does not have a valid value.</p>
public struct NotAcceptableException: ClientRuntime.ServiceError, Equatable {
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

extension NotAcceptableException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "NotAcceptableException(message: \(String(describing: message)))"}
}