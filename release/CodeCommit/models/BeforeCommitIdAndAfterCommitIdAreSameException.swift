// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The before commit ID and the after commit ID are the same, which is not valid. The before commit ID and the after commit ID must be different commit IDs.</p>
public struct BeforeCommitIdAndAfterCommitIdAreSameException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    /// <p>Any message associated with the exception.</p>
    public var message: String?

    public init (
        message: String? = nil
    )
    {
        self.message = message
    }
}

extension BeforeCommitIdAndAfterCommitIdAreSameException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "BeforeCommitIdAndAfterCommitIdAreSameException(message: \(String(describing: message)))"}
}