// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Configuration setting for monitoring.</p>
public struct MonitoringConfiguration: Equatable {
    /// <p>Monitoring configurations for CloudWatch.</p>
    public let cloudWatchMonitoringConfiguration: CloudWatchMonitoringConfiguration?
    /// <p>Monitoring configurations for the persistent application UI. </p>
    public let persistentAppUI: PersistentAppUI?
    /// <p>Amazon S3 configuration for monitoring log publishing.</p>
    public let s3MonitoringConfiguration: S3MonitoringConfiguration?

    public init (
        cloudWatchMonitoringConfiguration: CloudWatchMonitoringConfiguration? = nil,
        persistentAppUI: PersistentAppUI? = nil,
        s3MonitoringConfiguration: S3MonitoringConfiguration? = nil
    )
    {
        self.cloudWatchMonitoringConfiguration = cloudWatchMonitoringConfiguration
        self.persistentAppUI = persistentAppUI
        self.s3MonitoringConfiguration = s3MonitoringConfiguration
    }
}

extension MonitoringConfiguration: CustomDebugStringConvertible {
    public var debugDescription: String {
        "MonitoringConfiguration(cloudWatchMonitoringConfiguration: \(String(describing: cloudWatchMonitoringConfiguration)), persistentAppUI: \(String(describing: persistentAppUI)), s3MonitoringConfiguration: \(String(describing: s3MonitoringConfiguration)))"}
}