// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>WorkMail could not access the updated email content. Possible reasons:</p>
///          <ul>
///             <li>
///                <p>You made the request in a region other than your S3 bucket region.</p>
///             </li>
///             <li>
///                <p>The <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-owner-condition.html">S3 bucket owner</a> is not the
///         same as the calling AWS account.</p>
///             </li>
///             <li>
///                <p>You have an incomplete or missing S3 bucket policy. For more information about policies, see
///         <a href="https://docs.aws.amazon.com/workmail/latest/adminguide/update-with-lambda.html">
///           Updating message content with AWS Lambda
///         </a> in the <i>WorkMail Administrator
///           Guide</i>.</p>
///             </li>
///          </ul>
public struct InvalidContentLocation: ClientRuntime.ServiceError, Equatable {
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

extension InvalidContentLocation: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InvalidContentLocation(message: \(String(describing: message)))"}
}