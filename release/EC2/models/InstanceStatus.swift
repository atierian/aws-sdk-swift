// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes the status of an instance.</p>
public struct InstanceStatus: Equatable {
    /// <p>The Availability Zone of the instance.</p>
    public let availabilityZone: String?
    /// <p>Any scheduled events associated with the instance.</p>
    public let events: [InstanceStatusEvent]?
    /// <p>The ID of the instance.</p>
    public let instanceId: String?
    /// <p>The intended state of the instance. <a>DescribeInstanceStatus</a> requires
    ///             that an instance be in the <code>running</code> state.</p>
    public let instanceState: InstanceState?
    /// <p>Reports impaired functionality that stems from issues internal to the instance, such
    ///             as impaired reachability.</p>
    public let instanceStatus: InstanceStatusSummary?
    /// <p>The Amazon Resource Name (ARN) of the Outpost.</p>
    public let outpostArn: String?
    /// <p>Reports impaired functionality that stems from issues related to the systems that
    ///             support an instance, such as hardware failures and network connectivity problems.</p>
    public let systemStatus: InstanceStatusSummary?

    public init (
        availabilityZone: String? = nil,
        events: [InstanceStatusEvent]? = nil,
        instanceId: String? = nil,
        instanceState: InstanceState? = nil,
        instanceStatus: InstanceStatusSummary? = nil,
        outpostArn: String? = nil,
        systemStatus: InstanceStatusSummary? = nil
    )
    {
        self.availabilityZone = availabilityZone
        self.events = events
        self.instanceId = instanceId
        self.instanceState = instanceState
        self.instanceStatus = instanceStatus
        self.outpostArn = outpostArn
        self.systemStatus = systemStatus
    }
}

extension InstanceStatus: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InstanceStatus(availabilityZone: \(String(describing: availabilityZone)), events: \(String(describing: events)), instanceId: \(String(describing: instanceId)), instanceState: \(String(describing: instanceState)), instanceStatus: \(String(describing: instanceStatus)), outpostArn: \(String(describing: outpostArn)), systemStatus: \(String(describing: systemStatus)))"}
}