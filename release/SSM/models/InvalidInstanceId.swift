// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The following problems can cause this exception:</p>
///          <p>You do not have permission to access the instance.</p>
///          <p>SSM Agent is not running. Verify that SSM Agent is running.</p>
///          <p>SSM Agent is not registered with the SSM endpoint. Try reinstalling SSM Agent.</p>
///          <p>The instance is not in valid state. Valid states are: Running, Pending, Stopped, Stopping.
///    Invalid states are: Shutting-down and Terminated.</p>
public struct InvalidInstanceId: ClientRuntime.ServiceError, Equatable {
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

extension InvalidInstanceId: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InvalidInstanceId(message: \(String(describing: message)))"}
}