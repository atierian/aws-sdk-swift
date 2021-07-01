// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Describes a scheduled scaling
///             action.</p>
public struct ScheduledUpdateGroupAction: Equatable {
    /// <p>The name of the Auto Scaling group.</p>
    public let autoScalingGroupName: String?
    /// <p>The desired capacity is the initial capacity of the Auto Scaling group after the scheduled
    ///             action runs and the capacity it attempts to maintain.</p>
    public let desiredCapacity: Int?
    /// <p>The date and time in UTC for the recurring schedule to end. For example,
    ///                 <code>"2019-06-01T00:00:00Z"</code>.
    ///             </p>
    public let endTime: Date?
    /// <p>The maximum size of the Auto Scaling group.</p>
    public let maxSize: Int?
    /// <p>The minimum size of the Auto Scaling group.</p>
    public let minSize: Int?
    /// <p>The recurring schedule for the action, in Unix cron syntax format.</p>
    ///         <p>When <code>StartTime</code> and <code>EndTime</code> are specified with
    ///                 <code>Recurrence</code>, they form the boundaries of when the recurring action
    ///             starts and stops.</p>
    public let recurrence: String?
    /// <p>The Amazon Resource Name (ARN) of the scheduled action.</p>
    public let scheduledActionARN: String?
    /// <p>The name of the scheduled action.</p>
    public let scheduledActionName: String?
    /// <p>The date and time in UTC for this action to start. For example,
    ///                 <code>"2019-06-01T00:00:00Z"</code>.
    ///             </p>
    public let startTime: Date?
    /// <p>This parameter is no longer used.</p>
    public let time: Date?
    /// <p>The time zone for the cron expression.</p>
    public let timeZone: String?

    public init (
        autoScalingGroupName: String? = nil,
        desiredCapacity: Int? = nil,
        endTime: Date? = nil,
        maxSize: Int? = nil,
        minSize: Int? = nil,
        recurrence: String? = nil,
        scheduledActionARN: String? = nil,
        scheduledActionName: String? = nil,
        startTime: Date? = nil,
        time: Date? = nil,
        timeZone: String? = nil
    )
    {
        self.autoScalingGroupName = autoScalingGroupName
        self.desiredCapacity = desiredCapacity
        self.endTime = endTime
        self.maxSize = maxSize
        self.minSize = minSize
        self.recurrence = recurrence
        self.scheduledActionARN = scheduledActionARN
        self.scheduledActionName = scheduledActionName
        self.startTime = startTime
        self.time = time
        self.timeZone = timeZone
    }
}

extension ScheduledUpdateGroupAction: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ScheduledUpdateGroupAction(autoScalingGroupName: \(String(describing: autoScalingGroupName)), desiredCapacity: \(String(describing: desiredCapacity)), endTime: \(String(describing: endTime)), maxSize: \(String(describing: maxSize)), minSize: \(String(describing: minSize)), recurrence: \(String(describing: recurrence)), scheduledActionARN: \(String(describing: scheduledActionARN)), scheduledActionName: \(String(describing: scheduledActionName)), startTime: \(String(describing: startTime)), time: \(String(describing: time)), timeZone: \(String(describing: timeZone)))"}
}