// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>An Amazon Rekognition service limit was exceeded. For example, if you start too many Amazon Rekognition Video jobs concurrently, calls to start operations
///             (<code>StartLabelDetection</code>, for example) will raise a <code>LimitExceededException</code> exception (HTTP status code: 400) until
///             the number of concurrently running jobs is below the Amazon Rekognition service limit.  </p>
public struct LimitExceededException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    public var code: String?
    /// <p>A universally unique identifier (UUID) for the request.</p>
    public var logref: String?
    public var message: String?

    public init (
        code: String? = nil,
        logref: String? = nil,
        message: String? = nil
    )
    {
        self.code = code
        self.logref = logref
        self.message = message
    }
}

extension LimitExceededException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "LimitExceededException(code: \(String(describing: code)), logref: \(String(describing: logref)), message: \(String(describing: message)))"}
}