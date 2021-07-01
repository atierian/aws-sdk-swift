// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ForbiddenException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    /// <p>403</p>
    public var code: String?
    /// <p>The 403 error message returned by the web server.</p>
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

extension ForbiddenException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ForbiddenException(code: \(String(describing: code)), message: \(String(describing: message)))"}
}