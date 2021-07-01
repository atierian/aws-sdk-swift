// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The policy isn't attached to the specified target in the specified root.</p>
public struct PolicyNotAttachedException: ClientRuntime.ServiceError, Equatable {
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

extension PolicyNotAttachedException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PolicyNotAttachedException(message: \(String(describing: message)))"}
}