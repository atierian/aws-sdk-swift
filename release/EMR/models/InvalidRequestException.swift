// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>This exception occurs when there is something wrong with user input.</p>
public struct InvalidRequestException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    /// <p>The error code associated with the exception.</p>
    public var errorCode: String?
    /// <p>The message associated with the exception.</p>
    public var message: String?

    public init (
        errorCode: String? = nil,
        message: String? = nil
    )
    {
        self.errorCode = errorCode
        self.message = message
    }
}

extension InvalidRequestException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InvalidRequestException(errorCode: \(String(describing: errorCode)), message: \(String(describing: message)))"}
}