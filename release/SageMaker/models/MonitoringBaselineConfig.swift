// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Configuration for monitoring constraints and monitoring statistics. These baseline
///          resources are compared against the results of the current job from the series of jobs
///          scheduled to collect data periodically.</p>
public struct MonitoringBaselineConfig: Equatable {
    /// <p>The name of the job that performs baselining for the monitoring job.</p>
    public let baseliningJobName: String?
    /// <p>The baseline constraint file in Amazon S3 that the current monitoring job should
    ///          validated against.</p>
    public let constraintsResource: MonitoringConstraintsResource?
    /// <p>The baseline statistics file in Amazon S3 that the current monitoring job should be
    ///          validated against.</p>
    public let statisticsResource: MonitoringStatisticsResource?

    public init (
        baseliningJobName: String? = nil,
        constraintsResource: MonitoringConstraintsResource? = nil,
        statisticsResource: MonitoringStatisticsResource? = nil
    )
    {
        self.baseliningJobName = baseliningJobName
        self.constraintsResource = constraintsResource
        self.statisticsResource = statisticsResource
    }
}

extension MonitoringBaselineConfig: CustomDebugStringConvertible {
    public var debugDescription: String {
        "MonitoringBaselineConfig(baseliningJobName: \(String(describing: baseliningJobName)), constraintsResource: \(String(describing: constraintsResource)), statisticsResource: \(String(describing: statisticsResource)))"}
}