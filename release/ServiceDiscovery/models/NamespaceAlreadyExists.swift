// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The namespace that you're trying to create already exists.</p>
public struct NamespaceAlreadyExists: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    /// <p>The <code>CreatorRequestId</code> that was used to create the namespace.</p>
    public var creatorRequestId: String?
    public var message: String?
    /// <p>The ID of the existing namespace.</p>
    public var namespaceId: String?

    public init (
        creatorRequestId: String? = nil,
        message: String? = nil,
        namespaceId: String? = nil
    )
    {
        self.creatorRequestId = creatorRequestId
        self.message = message
        self.namespaceId = namespaceId
    }
}

extension NamespaceAlreadyExists: CustomDebugStringConvertible {
    public var debugDescription: String {
        "NamespaceAlreadyExists(creatorRequestId: \(String(describing: creatorRequestId)), message: \(String(describing: message)), namespaceId: \(String(describing: namespaceId)))"}
}