// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains information about an exponential rollout rate for a configuration deployment
///       job.</p>
public struct IoTJobExponentialRolloutRate: Equatable {
    /// <p>The minimum number of devices that receive a pending job notification, per minute, when
    ///       the job starts. This parameter defines the initial rollout rate of the job.</p>
    public let baseRatePerMinute: Int
    /// <p>The exponential factor to increase the rollout rate for the job.</p>
    ///          <p>This parameter supports up to one digit after the decimal (for example, you can specify
    ///       <code>1.5</code>, but not <code>1.55</code>).</p>
    public let incrementFactor: Double
    /// <p>The criteria to increase the rollout rate for the job.</p>
    public let rateIncreaseCriteria: IoTJobRateIncreaseCriteria?

    public init (
        baseRatePerMinute: Int = 0,
        incrementFactor: Double = 0.0,
        rateIncreaseCriteria: IoTJobRateIncreaseCriteria? = nil
    )
    {
        self.baseRatePerMinute = baseRatePerMinute
        self.incrementFactor = incrementFactor
        self.rateIncreaseCriteria = rateIncreaseCriteria
    }
}

extension IoTJobExponentialRolloutRate: CustomDebugStringConvertible {
    public var debugDescription: String {
        "IoTJobExponentialRolloutRate(baseRatePerMinute: \(String(describing: baseRatePerMinute)), incrementFactor: \(String(describing: incrementFactor)), rateIncreaseCriteria: \(String(describing: rateIncreaseCriteria)))"}
}