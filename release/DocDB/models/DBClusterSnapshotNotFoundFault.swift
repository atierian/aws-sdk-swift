// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>
///             <code>DBClusterSnapshotIdentifier</code> doesn't refer to an existing cluster snapshot. </p>
public struct DBClusterSnapshotNotFoundFault: ClientRuntime.ServiceError, Equatable {
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

extension DBClusterSnapshotNotFoundFault: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DBClusterSnapshotNotFoundFault(message: \(String(describing: message)))"}
}