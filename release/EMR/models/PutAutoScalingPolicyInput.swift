// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct PutAutoScalingPolicyInput: Equatable {
    /// <p>Specifies the definition of the automatic scaling policy.</p>
    public let autoScalingPolicy: AutoScalingPolicy?
    /// <p>Specifies the ID of a cluster. The instance group to which the automatic scaling policy
    ///          is applied is within this cluster.</p>
    public let clusterId: String?
    /// <p>Specifies the ID of the instance group to which the automatic scaling policy is
    ///          applied.</p>
    public let instanceGroupId: String?

    public init (
        autoScalingPolicy: AutoScalingPolicy? = nil,
        clusterId: String? = nil,
        instanceGroupId: String? = nil
    )
    {
        self.autoScalingPolicy = autoScalingPolicy
        self.clusterId = clusterId
        self.instanceGroupId = instanceGroupId
    }
}

extension PutAutoScalingPolicyInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PutAutoScalingPolicyInput(autoScalingPolicy: \(String(describing: autoScalingPolicy)), clusterId: \(String(describing: clusterId)), instanceGroupId: \(String(describing: instanceGroupId)))"}
}