// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The provided Task ID is not valid. Please provide a valid Task ID and try again.</p>
public struct InvalidTaskIdException: ClientRuntime.ServiceError, Equatable {
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

extension InvalidTaskIdException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InvalidTaskIdException(message: \(String(describing: message)))"}
}