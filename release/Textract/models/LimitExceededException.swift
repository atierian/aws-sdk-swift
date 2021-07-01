// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>An Amazon Textract service limit was exceeded. For example, if you start too many
///          asynchronous jobs concurrently, calls to start operations
///             (<code>StartDocumentTextDetection</code>, for example) raise a LimitExceededException
///          exception (HTTP status code: 400) until the number of concurrently running jobs is below
///          the Amazon Textract service limit. </p>
public struct LimitExceededException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    public var code: String?
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

extension LimitExceededException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "LimitExceededException(code: \(String(describing: code)), message: \(String(describing: message)))"}
}