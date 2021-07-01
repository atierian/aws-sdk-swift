// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A cluster parameter group that is associated with an Amazon Redshift cluster.</p>
public struct AwsRedshiftClusterClusterParameterGroup: Equatable {
    /// <p>The list of parameter statuses.</p>
    public let clusterParameterStatusList: [AwsRedshiftClusterClusterParameterStatus]?
    /// <p>The status of updates to the parameters.</p>
    public let parameterApplyStatus: String?
    /// <p>The name of the parameter group.</p>
    public let parameterGroupName: String?

    public init (
        clusterParameterStatusList: [AwsRedshiftClusterClusterParameterStatus]? = nil,
        parameterApplyStatus: String? = nil,
        parameterGroupName: String? = nil
    )
    {
        self.clusterParameterStatusList = clusterParameterStatusList
        self.parameterApplyStatus = parameterApplyStatus
        self.parameterGroupName = parameterGroupName
    }
}

extension AwsRedshiftClusterClusterParameterGroup: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AwsRedshiftClusterClusterParameterGroup(clusterParameterStatusList: \(String(describing: clusterParameterStatusList)), parameterApplyStatus: \(String(describing: parameterApplyStatus)), parameterGroupName: \(String(describing: parameterGroupName)))"}
}