// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The configuration of this WorkSpace is not supported for this operation. For more information, see
///          <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/required-service-components.html">Required
///             Configuration and Service Components for WorkSpaces </a>.</p>
public struct UnsupportedWorkspaceConfigurationException: ClientRuntime.ServiceError, Equatable {
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

extension UnsupportedWorkspaceConfigurationException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UnsupportedWorkspaceConfigurationException(message: \(String(describing: message)))"}
}