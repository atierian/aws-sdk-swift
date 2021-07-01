// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>If Amazon Route 53 can't process a request before the next request arrives, it will reject
/// 			subsequent requests for the same hosted zone and return an <code>HTTP 400 error</code>
/// 			(<code>Bad request</code>). If Route 53 returns this error repeatedly for the same request, we
/// 			recommend that you wait, in intervals of increasing duration, before you try the request
/// 			again.</p>
public struct PriorRequestNotComplete: ClientRuntime.ServiceError, Equatable {
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

extension PriorRequestNotComplete: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PriorRequestNotComplete(message: \(String(describing: message)))"}
}