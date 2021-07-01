// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The specified layers could not be found, or the specified layer is not valid for this
///             repository.</p>
public struct LayersNotFoundException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    /// <p>The error message associated with the exception.</p>
    public var message: String?

    public init (
        message: String? = nil
    )
    {
        self.message = message
    }
}

extension LayersNotFoundException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "LayersNotFoundException(message: \(String(describing: message)))"}
}