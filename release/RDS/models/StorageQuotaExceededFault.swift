// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The request would result in the user exceeding the allowed amount of storage
///             available across all DB instances.</p>
public struct StorageQuotaExceededFault: ClientRuntime.ServiceError, Equatable {
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

extension StorageQuotaExceededFault: CustomDebugStringConvertible {
    public var debugDescription: String {
        "StorageQuotaExceededFault(message: \(String(describing: message)))"}
}