// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>
///   Contains information about the configuration of destination connectors present in the flow.
/// </p>
public struct DestinationFlowConfig: Equatable {
    /// <p>
    ///   The name of the connector profile. This name must be unique for each connector profile in the AWS account.
    /// </p>
    public let connectorProfileName: String?
    /// <p>
    ///   The type of connector, such as Salesforce, Amplitude, and so on.
    /// </p>
    public let connectorType: ConnectorType?
    /// <p>
    ///   This stores the information that is required to query a particular connector.
    /// </p>
    public let destinationConnectorProperties: DestinationConnectorProperties?

    public init (
        connectorProfileName: String? = nil,
        connectorType: ConnectorType? = nil,
        destinationConnectorProperties: DestinationConnectorProperties? = nil
    )
    {
        self.connectorProfileName = connectorProfileName
        self.connectorType = connectorType
        self.destinationConnectorProperties = destinationConnectorProperties
    }
}

extension DestinationFlowConfig: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DestinationFlowConfig(connectorProfileName: \(String(describing: connectorProfileName)), connectorType: \(String(describing: connectorType)), destinationConnectorProperties: \(String(describing: destinationConnectorProperties)))"}
}