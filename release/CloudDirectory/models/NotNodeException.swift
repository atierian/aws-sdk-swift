// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Occurs when any invalid operations are performed on an object that is not a node, such
///       as calling <code>ListObjectChildren</code> for a leaf node object.</p>
public struct NotNodeException: ClientRuntime.ServiceError, Equatable {
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

extension NotNodeException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "NotNodeException(message: \(String(describing: message)))"}
}