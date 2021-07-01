// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ThrottlingException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    /// <p>Request was denied due to request throttling.</p>
    public var exceptionMessage: String?

    public init (
        exceptionMessage: String? = nil
    )
    {
        self.exceptionMessage = exceptionMessage
    }
}

extension ThrottlingException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ThrottlingException(exceptionMessage: \(String(describing: exceptionMessage)))"}
}