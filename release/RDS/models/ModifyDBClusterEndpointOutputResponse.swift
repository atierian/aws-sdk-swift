// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>This data type represents the information you need to connect to an Amazon Aurora DB cluster.
///       This data type is used as a response element in the following actions:</p>
///          <ul>
///             <li>
///                <p>
///                   <code>CreateDBClusterEndpoint</code>
///                </p>
///             </li>
///             <li>
///                <p>
///                   <code>DescribeDBClusterEndpoints</code>
///                </p>
///             </li>
///             <li>
///                <p>
///                   <code>ModifyDBClusterEndpoint</code>
///                </p>
///             </li>
///             <li>
///                <p>
///                   <code>DeleteDBClusterEndpoint</code>
///                </p>
///             </li>
///          </ul>
///          <p>For the data structure that represents Amazon RDS DB instance endpoints,
///         see <code>Endpoint</code>.</p>
public struct ModifyDBClusterEndpointOutputResponse: Equatable {
    /// <p>The type associated with a custom endpoint. One of: <code>READER</code>,
    ///        <code>WRITER</code>, <code>ANY</code>.</p>
    public let customEndpointType: String?
    /// <p>The Amazon Resource Name (ARN) for the endpoint.</p>
    public let dBClusterEndpointArn: String?
    /// <p>The identifier associated with the endpoint. This parameter is stored as a lowercase string.</p>
    public let dBClusterEndpointIdentifier: String?
    /// <p>A unique system-generated identifier for an endpoint. It remains the same for the whole life of the endpoint.</p>
    public let dBClusterEndpointResourceIdentifier: String?
    /// <p>The DB cluster identifier of the DB cluster associated with the endpoint. This parameter is
    ///             stored as a lowercase string.</p>
    public let dBClusterIdentifier: String?
    /// <p>The DNS address of the endpoint.</p>
    public let endpoint: String?
    /// <p>The type of the endpoint. One of: <code>READER</code>, <code>WRITER</code>, <code>CUSTOM</code>.</p>
    public let endpointType: String?
    /// <p>List of DB instance identifiers that aren't part of the custom endpoint group.
    ///        All other eligible instances are reachable through the custom endpoint.
    ///        Only relevant if the list of static members is empty.</p>
    public let excludedMembers: [String]?
    /// <p>List of DB instance identifiers that are part of the custom endpoint group.</p>
    public let staticMembers: [String]?
    /// <p>The current status of the endpoint. One of: <code>creating</code>, <code>available</code>, <code>deleting</code>, <code>inactive</code>, <code>modifying</code>. The <code>inactive</code> state applies to an endpoint that can't be used for a certain kind of cluster,
    ///      such as a <code>writer</code> endpoint for a read-only secondary cluster in a global database.</p>
    public let status: String?

    public init (
        customEndpointType: String? = nil,
        dBClusterEndpointArn: String? = nil,
        dBClusterEndpointIdentifier: String? = nil,
        dBClusterEndpointResourceIdentifier: String? = nil,
        dBClusterIdentifier: String? = nil,
        endpoint: String? = nil,
        endpointType: String? = nil,
        excludedMembers: [String]? = nil,
        staticMembers: [String]? = nil,
        status: String? = nil
    )
    {
        self.customEndpointType = customEndpointType
        self.dBClusterEndpointArn = dBClusterEndpointArn
        self.dBClusterEndpointIdentifier = dBClusterEndpointIdentifier
        self.dBClusterEndpointResourceIdentifier = dBClusterEndpointResourceIdentifier
        self.dBClusterIdentifier = dBClusterIdentifier
        self.endpoint = endpoint
        self.endpointType = endpointType
        self.excludedMembers = excludedMembers
        self.staticMembers = staticMembers
        self.status = status
    }
}

extension ModifyDBClusterEndpointOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ModifyDBClusterEndpointOutputResponse(customEndpointType: \(String(describing: customEndpointType)), dBClusterEndpointArn: \(String(describing: dBClusterEndpointArn)), dBClusterEndpointIdentifier: \(String(describing: dBClusterEndpointIdentifier)), dBClusterEndpointResourceIdentifier: \(String(describing: dBClusterEndpointResourceIdentifier)), dBClusterIdentifier: \(String(describing: dBClusterIdentifier)), endpoint: \(String(describing: endpoint)), endpointType: \(String(describing: endpointType)), excludedMembers: \(String(describing: excludedMembers)), staticMembers: \(String(describing: staticMembers)), status: \(String(describing: status)))"}
}