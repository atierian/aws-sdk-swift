// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The pull request ID is not valid. Make sure that you have provided the full ID and that the pull request is in the specified repository, and then try again.</p>
public struct InvalidPullRequestIdException: ClientRuntime.ServiceError, Equatable {
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

extension InvalidPullRequestIdException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InvalidPullRequestIdException(message: \(String(describing: message)))"}
}