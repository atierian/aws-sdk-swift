// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>An invalid parameter has been specified. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.</p>
public struct InvalidTagParameterException: ClientRuntime.ServiceError, Equatable {
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

extension InvalidTagParameterException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InvalidTagParameterException(message: \(String(describing: message)))"}
}