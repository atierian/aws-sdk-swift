// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The requested resource does not exist.</p>
public struct ResourceExistsException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    public var message: String?
    public var resource: String?
    public var resourceType: String?

    public init (
        message: String? = nil,
        resource: String? = nil,
        resourceType: String? = nil
    )
    {
        self.message = message
        self.resource = resource
        self.resourceType = resourceType
    }
}

extension ResourceExistsException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ResourceExistsException(message: \(String(describing: message)), resource: \(String(describing: resource)), resourceType: \(String(describing: resourceType)))"}
}