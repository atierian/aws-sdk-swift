// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The provided SNS topic ARN is invalid. Please provide a valid SNS topic ARN and try
///       again.</p>
public struct InvalidSnsTopicArnException: ClientRuntime.ServiceError, Equatable {
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

extension InvalidSnsTopicArnException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InvalidSnsTopicArnException(message: \(String(describing: message)))"}
}