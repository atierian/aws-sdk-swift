// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Application created with too many tags, or too many tags added to an application. Note that the maximum number of application tags includes system tags. The maximum number of user-defined application tags is 50.</p>
public struct TooManyTagsException: ClientRuntime.ServiceError, Equatable {
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

extension TooManyTagsException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "TooManyTagsException(message: \(String(describing: message)))"}
}