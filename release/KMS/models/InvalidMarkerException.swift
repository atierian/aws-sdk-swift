// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The request was rejected because the marker that specifies where pagination should next
///       begin is not valid.</p>
public struct InvalidMarkerException: ClientRuntime.ServiceError, Equatable {
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

extension InvalidMarkerException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InvalidMarkerException(message: \(String(describing: message)))"}
}