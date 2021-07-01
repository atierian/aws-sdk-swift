// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Information about the virtual interface failover test.</p>
public struct VirtualInterfaceTestHistory: Equatable {
    /// <p>The BGP peers that were put in the DOWN state as part of the virtual interface failover test.</p>
    public let bgpPeers: [String]?
    /// <p>The time that the virtual interface moves out of the DOWN state.</p>
    public let endTime: Date?
    /// <p>The owner ID of the tested virtual interface.</p>
    public let ownerAccount: String?
    /// <p>The time that the virtual interface moves to the DOWN state.</p>
    public let startTime: Date?
    /// <p>The status of the virtual interface failover test.</p>
    public let status: String?
    /// <p>The time that the virtual interface failover test ran in minutes.</p>
    public let testDurationInMinutes: Int?
    /// <p>The ID of the virtual interface failover test.</p>
    public let testId: String?
    /// <p>The ID of the tested virtual interface.</p>
    public let virtualInterfaceId: String?

    public init (
        bgpPeers: [String]? = nil,
        endTime: Date? = nil,
        ownerAccount: String? = nil,
        startTime: Date? = nil,
        status: String? = nil,
        testDurationInMinutes: Int? = nil,
        testId: String? = nil,
        virtualInterfaceId: String? = nil
    )
    {
        self.bgpPeers = bgpPeers
        self.endTime = endTime
        self.ownerAccount = ownerAccount
        self.startTime = startTime
        self.status = status
        self.testDurationInMinutes = testDurationInMinutes
        self.testId = testId
        self.virtualInterfaceId = virtualInterfaceId
    }
}

extension VirtualInterfaceTestHistory: CustomDebugStringConvertible {
    public var debugDescription: String {
        "VirtualInterfaceTestHistory(bgpPeers: \(String(describing: bgpPeers)), endTime: \(String(describing: endTime)), ownerAccount: \(String(describing: ownerAccount)), startTime: \(String(describing: startTime)), status: \(String(describing: status)), testDurationInMinutes: \(String(describing: testDurationInMinutes)), testId: \(String(describing: testId)), virtualInterfaceId: \(String(describing: virtualInterfaceId)))"}
}