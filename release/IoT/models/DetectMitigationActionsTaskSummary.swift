// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>
///             The summary of the mitigation action tasks.
///         </p>
public struct DetectMitigationActionsTaskSummary: Equatable {
    /// <p>
    ///             The definition of the actions.
    ///         </p>
    public let actionsDefinition: [MitigationAction]?
    /// <p>
    ///             Includes only active violations.
    ///         </p>
    public let onlyActiveViolationsIncluded: Bool
    /// <p>
    ///             Includes suppressed alerts.
    ///         </p>
    public let suppressedAlertsIncluded: Bool
    /// <p>
    ///             Specifies the ML Detect findings to which the mitigation actions are applied.
    ///         </p>
    public let target: DetectMitigationActionsTaskTarget?
    /// <p>
    ///             The date the task ended.
    ///         </p>
    public let taskEndTime: Date?
    /// <p>
    ///             The unique identifier of the task.
    ///         </p>
    public let taskId: String?
    /// <p>
    ///             The date the task started.
    ///         </p>
    public let taskStartTime: Date?
    /// <p>
    ///             The statistics of a mitigation action task.
    ///         </p>
    public let taskStatistics: DetectMitigationActionsTaskStatistics?
    /// <p>
    ///             The status of the task.
    ///         </p>
    public let taskStatus: DetectMitigationActionsTaskStatus?
    /// <p>
    ///             Specifies the time period of which violation events occurred between.
    ///         </p>
    public let violationEventOccurrenceRange: ViolationEventOccurrenceRange?

    public init (
        actionsDefinition: [MitigationAction]? = nil,
        onlyActiveViolationsIncluded: Bool = false,
        suppressedAlertsIncluded: Bool = false,
        target: DetectMitigationActionsTaskTarget? = nil,
        taskEndTime: Date? = nil,
        taskId: String? = nil,
        taskStartTime: Date? = nil,
        taskStatistics: DetectMitigationActionsTaskStatistics? = nil,
        taskStatus: DetectMitigationActionsTaskStatus? = nil,
        violationEventOccurrenceRange: ViolationEventOccurrenceRange? = nil
    )
    {
        self.actionsDefinition = actionsDefinition
        self.onlyActiveViolationsIncluded = onlyActiveViolationsIncluded
        self.suppressedAlertsIncluded = suppressedAlertsIncluded
        self.target = target
        self.taskEndTime = taskEndTime
        self.taskId = taskId
        self.taskStartTime = taskStartTime
        self.taskStatistics = taskStatistics
        self.taskStatus = taskStatus
        self.violationEventOccurrenceRange = violationEventOccurrenceRange
    }
}

extension DetectMitigationActionsTaskSummary: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DetectMitigationActionsTaskSummary(actionsDefinition: \(String(describing: actionsDefinition)), onlyActiveViolationsIncluded: \(String(describing: onlyActiveViolationsIncluded)), suppressedAlertsIncluded: \(String(describing: suppressedAlertsIncluded)), target: \(String(describing: target)), taskEndTime: \(String(describing: taskEndTime)), taskId: \(String(describing: taskId)), taskStartTime: \(String(describing: taskStartTime)), taskStatistics: \(String(describing: taskStatistics)), taskStatus: \(String(describing: taskStatus)), violationEventOccurrenceRange: \(String(describing: violationEventOccurrenceRange)))"}
}