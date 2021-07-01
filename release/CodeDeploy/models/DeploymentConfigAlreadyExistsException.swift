// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>A deployment configuration with the specified name with the IAM user or AWS account
///             already exists.</p>
public struct DeploymentConfigAlreadyExistsException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    /// <p>The message that corresponds to the exception thrown by AWS CodeDeploy.</p>
    public var message: String?

    public init (
        message: String? = nil
    )
    {
        self.message = message
    }
}

extension DeploymentConfigAlreadyExistsException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeploymentConfigAlreadyExistsException(message: \(String(describing: message)))"}
}