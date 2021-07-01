// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Input to an AddInstanceGroups call.</p>
public struct AddInstanceGroupsInput: Equatable {
    /// <p>Instance groups to add.</p>
    public let instanceGroups: [InstanceGroupConfig]?
    /// <p>Job flow in which to add the instance groups.</p>
    public let jobFlowId: String?

    public init (
        instanceGroups: [InstanceGroupConfig]? = nil,
        jobFlowId: String? = nil
    )
    {
        self.instanceGroups = instanceGroups
        self.jobFlowId = jobFlowId
    }
}

extension AddInstanceGroupsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AddInstanceGroupsInput(instanceGroups: \(String(describing: instanceGroups)), jobFlowId: \(String(describing: jobFlowId)))"}
}