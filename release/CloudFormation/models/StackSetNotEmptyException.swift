// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>You can't yet delete this stack set, because it still contains one or more stack
///          instances. Delete all stack instances from the stack set before deleting the stack
///          set.</p>
public struct StackSetNotEmptyException: ClientRuntime.ServiceError, Equatable {
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

extension StackSetNotEmptyException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "StackSetNotEmptyException(message: \(String(describing: message)))"}
}