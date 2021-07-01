// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The number of query strings in the origin request policy exceeds the maximum. For more
/// 			information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the
/// 			<i>Amazon CloudFront Developer Guide</i>.</p>
public struct TooManyQueryStringsInOriginRequestPolicy: ClientRuntime.ServiceError, Equatable {
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

extension TooManyQueryStringsInOriginRequestPolicy: CustomDebugStringConvertible {
    public var debugDescription: String {
        "TooManyQueryStringsInOriginRequestPolicy(message: \(String(describing: message)))"}
}