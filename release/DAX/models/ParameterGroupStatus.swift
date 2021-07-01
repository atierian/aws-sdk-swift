// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The status of a parameter group.</p>
public struct ParameterGroupStatus: Equatable {
    /// <p>The node IDs of one or more nodes to be rebooted.</p>
    public let nodeIdsToReboot: [String]?
    /// <p>The status of parameter updates. </p>
    public let parameterApplyStatus: String?
    /// <p>The name of the parameter group.</p>
    public let parameterGroupName: String?

    public init (
        nodeIdsToReboot: [String]? = nil,
        parameterApplyStatus: String? = nil,
        parameterGroupName: String? = nil
    )
    {
        self.nodeIdsToReboot = nodeIdsToReboot
        self.parameterApplyStatus = parameterApplyStatus
        self.parameterGroupName = parameterGroupName
    }
}

extension ParameterGroupStatus: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ParameterGroupStatus(nodeIdsToReboot: \(String(describing: nodeIdsToReboot)), parameterApplyStatus: \(String(describing: parameterApplyStatus)), parameterGroupName: \(String(describing: parameterGroupName)))"}
}