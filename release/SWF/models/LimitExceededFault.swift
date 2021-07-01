// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Returned by any operation if a system imposed limitation has been reached. To address this fault you should either clean up unused resources or increase the limit by contacting AWS.</p>
public struct LimitExceededFault: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    /// <p>A description that may help with diagnosing the cause of the fault.</p>
    public var message: String?

    public init (
        message: String? = nil
    )
    {
        self.message = message
    }
}

extension LimitExceededFault: CustomDebugStringConvertible {
    public var debugDescription: String {
        "LimitExceededFault(message: \(String(describing: message)))"}
}