// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>A request option was specified that is not supported.</p>
public struct UnsupportedOptionFault: ClientRuntime.ServiceError, Equatable {
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

extension UnsupportedOptionFault: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UnsupportedOptionFault(message: \(String(describing: message)))"}
}