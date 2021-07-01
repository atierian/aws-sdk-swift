// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The request was denied due to request throttling.</p>
public struct ThrottlingException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    public var message: String?
    /// Service Quotas requirement to identify originating service
    public var quotaCode: String?
    /// Advice to clients on when the call can be safely retried
    public var retryAfterSeconds: Int
    /// Service Quotas requirement to identify originating quota
    public var serviceCode: String?

    public init (
        message: String? = nil,
        quotaCode: String? = nil,
        retryAfterSeconds: Int = 0,
        serviceCode: String? = nil
    )
    {
        self.message = message
        self.quotaCode = quotaCode
        self.retryAfterSeconds = retryAfterSeconds
        self.serviceCode = serviceCode
    }
}

extension ThrottlingException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ThrottlingException(message: \(String(describing: message)), quotaCode: \(String(describing: quotaCode)), retryAfterSeconds: \(String(describing: retryAfterSeconds)), serviceCode: \(String(describing: serviceCode)))"}
}