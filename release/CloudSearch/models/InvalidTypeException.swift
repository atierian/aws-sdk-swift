// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The request was rejected because it specified an invalid type definition.</p>
public struct InvalidTypeException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    /// <p>A machine-parsable string error or warning code.</p>
    public var code: String?
    /// <p>A human-readable string error or warning message.</p>
    public var message: String?

    public init (
        code: String? = nil,
        message: String? = nil
    )
    {
        self.code = code
        self.message = message
    }
}

extension InvalidTypeException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InvalidTypeException(code: \(String(describing: code)), message: \(String(describing: message)))"}
}