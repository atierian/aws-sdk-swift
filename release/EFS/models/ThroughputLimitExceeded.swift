// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Returned if the throughput mode or amount of provisioned throughput can't be changed
///             because the throughput limit of 1024 MiB/s has been reached.</p>
public struct ThroughputLimitExceeded: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    public var errorCode: String?
    public var message: String?

    public init (
        errorCode: String? = nil,
        message: String? = nil
    )
    {
        self.errorCode = errorCode
        self.message = message
    }
}

extension ThroughputLimitExceeded: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ThroughputLimitExceeded(errorCode: \(String(describing: errorCode)), message: \(String(describing: message)))"}
}