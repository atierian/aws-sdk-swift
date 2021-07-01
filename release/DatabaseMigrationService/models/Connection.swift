// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Status of the connection between an endpoint and a replication instance, including
///          Amazon Resource Names (ARNs) and the last error message issued.</p>
public struct Connection: Equatable {
    /// <p>The ARN string that uniquely identifies the endpoint.</p>
    public let endpointArn: String?
    /// <p>The identifier of the endpoint. Identifiers must begin with a letter and must contain only
    ///          ASCII letters, digits, and hyphens. They can't end with a hyphen or contain two
    ///          consecutive hyphens.</p>
    public let endpointIdentifier: String?
    /// <p>The error message when the connection last failed.</p>
    public let lastFailureMessage: String?
    /// <p>The ARN of the replication instance.</p>
    public let replicationInstanceArn: String?
    /// <p>The replication instance identifier. This parameter is stored as a lowercase
    ///          string.</p>
    public let replicationInstanceIdentifier: String?
    /// <p>The connection status. This parameter can return one of the following values:</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>"successful"</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>"testing"</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>"failed"</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>"deleting"</code>
    ///                </p>
    ///             </li>
    ///          </ul>
    public let status: String?

    public init (
        endpointArn: String? = nil,
        endpointIdentifier: String? = nil,
        lastFailureMessage: String? = nil,
        replicationInstanceArn: String? = nil,
        replicationInstanceIdentifier: String? = nil,
        status: String? = nil
    )
    {
        self.endpointArn = endpointArn
        self.endpointIdentifier = endpointIdentifier
        self.lastFailureMessage = lastFailureMessage
        self.replicationInstanceArn = replicationInstanceArn
        self.replicationInstanceIdentifier = replicationInstanceIdentifier
        self.status = status
    }
}

extension Connection: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Connection(endpointArn: \(String(describing: endpointArn)), endpointIdentifier: \(String(describing: endpointIdentifier)), lastFailureMessage: \(String(describing: lastFailureMessage)), replicationInstanceArn: \(String(describing: replicationInstanceArn)), replicationInstanceIdentifier: \(String(describing: replicationInstanceIdentifier)), status: \(String(describing: status)))"}
}