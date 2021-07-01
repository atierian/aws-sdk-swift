// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Represents a connector.</p>
public struct Connector: Equatable {
    /// <p>The time the connector was associated.</p>
    public let associatedOn: Date?
    /// <p>The capabilities of the connector.</p>
    public let capabilityList: [ConnectorCapability]?
    /// <p>The ID of the connector.</p>
    public let connectorId: String?
    /// <p>The IP address of the connector.</p>
    public let ipAddress: String?
    /// <p>The MAC address of the connector.</p>
    public let macAddress: String?
    /// <p>The status of the connector.</p>
    public let status: ConnectorStatus?
    /// <p>The connector version.</p>
    public let version: String?
    /// <p>The ID of the VM manager.</p>
    public let vmManagerId: String?
    /// <p>The name of the VM manager.</p>
    public let vmManagerName: String?
    /// <p>The VM management product.</p>
    public let vmManagerType: VmManagerType?

    public init (
        associatedOn: Date? = nil,
        capabilityList: [ConnectorCapability]? = nil,
        connectorId: String? = nil,
        ipAddress: String? = nil,
        macAddress: String? = nil,
        status: ConnectorStatus? = nil,
        version: String? = nil,
        vmManagerId: String? = nil,
        vmManagerName: String? = nil,
        vmManagerType: VmManagerType? = nil
    )
    {
        self.associatedOn = associatedOn
        self.capabilityList = capabilityList
        self.connectorId = connectorId
        self.ipAddress = ipAddress
        self.macAddress = macAddress
        self.status = status
        self.version = version
        self.vmManagerId = vmManagerId
        self.vmManagerName = vmManagerName
        self.vmManagerType = vmManagerType
    }
}

extension Connector: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Connector(associatedOn: \(String(describing: associatedOn)), capabilityList: \(String(describing: capabilityList)), connectorId: \(String(describing: connectorId)), ipAddress: \(String(describing: ipAddress)), macAddress: \(String(describing: macAddress)), status: \(String(describing: status)), version: \(String(describing: version)), vmManagerId: \(String(describing: vmManagerId)), vmManagerName: \(String(describing: vmManagerName)), vmManagerType: \(String(describing: vmManagerType)))"}
}