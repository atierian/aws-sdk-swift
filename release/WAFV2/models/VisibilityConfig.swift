// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Defines and enables Amazon CloudWatch metrics and web request sample collection.  </p>
public struct VisibilityConfig: Equatable {
    /// <p>A boolean indicating whether the associated resource sends metrics to CloudWatch. For the list of available metrics, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/monitoring-cloudwatch.html#waf-metrics">AWS WAF Metrics</a>.</p>
    public let cloudWatchMetricsEnabled: Bool
    /// <p>A name of the CloudWatch metric. The name can contain only the characters: A-Z, a-z, 0-9, - (hyphen), and _ (underscore). The name can be from one to 128 characters long. It can't contain
    ///          whitespace or metric names reserved for AWS WAF, for example "All" and "Default_Action." </p>
    public let metricName: String?
    /// <p>A boolean indicating whether AWS WAF should store a sampling of the web
    ///            requests that match the rules. You can view the sampled requests through the
    ///            AWS WAF console. </p>
    public let sampledRequestsEnabled: Bool

    public init (
        cloudWatchMetricsEnabled: Bool = false,
        metricName: String? = nil,
        sampledRequestsEnabled: Bool = false
    )
    {
        self.cloudWatchMetricsEnabled = cloudWatchMetricsEnabled
        self.metricName = metricName
        self.sampledRequestsEnabled = sampledRequestsEnabled
    }
}

extension VisibilityConfig: CustomDebugStringConvertible {
    public var debugDescription: String {
        "VisibilityConfig(cloudWatchMetricsEnabled: \(String(describing: cloudWatchMetricsEnabled)), metricName: \(String(describing: metricName)), sampledRequestsEnabled: \(String(describing: sampledRequestsEnabled)))"}
}