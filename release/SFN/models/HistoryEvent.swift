// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Contains details about the events of an execution.</p>
public struct HistoryEvent: Equatable {
    /// <p>Contains details about an activity that failed during an execution.</p>
    public let activityFailedEventDetails: ActivityFailedEventDetails?
    /// <p>Contains details about an activity schedule event that failed during an execution.</p>
    public let activityScheduleFailedEventDetails: ActivityScheduleFailedEventDetails?
    /// <p>Contains details about an activity scheduled during an execution.</p>
    public let activityScheduledEventDetails: ActivityScheduledEventDetails?
    /// <p>Contains details about the start of an activity during an execution.</p>
    public let activityStartedEventDetails: ActivityStartedEventDetails?
    /// <p>Contains details about an activity that successfully terminated during an
    ///       execution.</p>
    public let activitySucceededEventDetails: ActivitySucceededEventDetails?
    /// <p>Contains details about an activity timeout that occurred during an execution.</p>
    public let activityTimedOutEventDetails: ActivityTimedOutEventDetails?
    /// <p>Contains details about an abort of an execution.</p>
    public let executionAbortedEventDetails: ExecutionAbortedEventDetails?
    /// <p>Contains details about an execution failure event.</p>
    public let executionFailedEventDetails: ExecutionFailedEventDetails?
    /// <p>Contains details about the start of the execution.</p>
    public let executionStartedEventDetails: ExecutionStartedEventDetails?
    /// <p>Contains details about the successful termination of the execution.</p>
    public let executionSucceededEventDetails: ExecutionSucceededEventDetails?
    /// <p>Contains details about the execution timeout that occurred during the execution.</p>
    public let executionTimedOutEventDetails: ExecutionTimedOutEventDetails?
    /// <p>The id of the event. Events are numbered sequentially, starting at one.</p>
    public let id: Int
    /// <p>Contains details about a lambda function that failed during an execution.</p>
    public let lambdaFunctionFailedEventDetails: LambdaFunctionFailedEventDetails?
    /// <p>Contains details about a failed lambda function schedule event that occurred during an
    ///       execution.</p>
    public let lambdaFunctionScheduleFailedEventDetails: LambdaFunctionScheduleFailedEventDetails?
    /// <p>Contains details about a lambda function scheduled during an execution.</p>
    public let lambdaFunctionScheduledEventDetails: LambdaFunctionScheduledEventDetails?
    /// <p>Contains details about a lambda function that failed to start during an execution.</p>
    public let lambdaFunctionStartFailedEventDetails: LambdaFunctionStartFailedEventDetails?
    /// <p>Contains details about a lambda function that terminated successfully during an
    ///       execution.</p>
    public let lambdaFunctionSucceededEventDetails: LambdaFunctionSucceededEventDetails?
    /// <p>Contains details about a lambda function timeout that occurred during an execution.</p>
    public let lambdaFunctionTimedOutEventDetails: LambdaFunctionTimedOutEventDetails?
    /// <p>Contains details about an iteration of a Map state that was aborted.</p>
    public let mapIterationAbortedEventDetails: MapIterationEventDetails?
    /// <p>Contains details about an iteration of a Map state that failed.</p>
    public let mapIterationFailedEventDetails: MapIterationEventDetails?
    /// <p>Contains details about an iteration of a Map state that was started.</p>
    public let mapIterationStartedEventDetails: MapIterationEventDetails?
    /// <p>Contains details about an iteration of a Map state that succeeded.</p>
    public let mapIterationSucceededEventDetails: MapIterationEventDetails?
    /// <p>Contains details about Map state that was started.</p>
    public let mapStateStartedEventDetails: MapStateStartedEventDetails?
    /// <p>The id of the previous event.</p>
    public let previousEventId: Int
    /// <p>Contains details about a state entered during an execution.</p>
    public let stateEnteredEventDetails: StateEnteredEventDetails?
    /// <p>Contains details about an exit from a state during an execution.</p>
    public let stateExitedEventDetails: StateExitedEventDetails?
    /// <p>Contains details about the failure of a task.</p>
    public let taskFailedEventDetails: TaskFailedEventDetails?
    /// <p>Contains details about a task that was scheduled.</p>
    public let taskScheduledEventDetails: TaskScheduledEventDetails?
    /// <p>Contains details about a task that failed to start.</p>
    public let taskStartFailedEventDetails: TaskStartFailedEventDetails?
    /// <p>Contains details about a task that was started.</p>
    public let taskStartedEventDetails: TaskStartedEventDetails?
    /// <p>Contains details about a task that where the submit failed.</p>
    public let taskSubmitFailedEventDetails: TaskSubmitFailedEventDetails?
    /// <p>Contains details about a submitted task.</p>
    public let taskSubmittedEventDetails: TaskSubmittedEventDetails?
    /// <p>Contains details about a task that succeeded.</p>
    public let taskSucceededEventDetails: TaskSucceededEventDetails?
    /// <p>Contains details about a task that timed out.</p>
    public let taskTimedOutEventDetails: TaskTimedOutEventDetails?
    /// <p>The date and time the event occurred.</p>
    public let timestamp: Date?
    /// <p>The type of the event.</p>
    public let type: HistoryEventType?

    public init (
        activityFailedEventDetails: ActivityFailedEventDetails? = nil,
        activityScheduleFailedEventDetails: ActivityScheduleFailedEventDetails? = nil,
        activityScheduledEventDetails: ActivityScheduledEventDetails? = nil,
        activityStartedEventDetails: ActivityStartedEventDetails? = nil,
        activitySucceededEventDetails: ActivitySucceededEventDetails? = nil,
        activityTimedOutEventDetails: ActivityTimedOutEventDetails? = nil,
        executionAbortedEventDetails: ExecutionAbortedEventDetails? = nil,
        executionFailedEventDetails: ExecutionFailedEventDetails? = nil,
        executionStartedEventDetails: ExecutionStartedEventDetails? = nil,
        executionSucceededEventDetails: ExecutionSucceededEventDetails? = nil,
        executionTimedOutEventDetails: ExecutionTimedOutEventDetails? = nil,
        id: Int = 0,
        lambdaFunctionFailedEventDetails: LambdaFunctionFailedEventDetails? = nil,
        lambdaFunctionScheduleFailedEventDetails: LambdaFunctionScheduleFailedEventDetails? = nil,
        lambdaFunctionScheduledEventDetails: LambdaFunctionScheduledEventDetails? = nil,
        lambdaFunctionStartFailedEventDetails: LambdaFunctionStartFailedEventDetails? = nil,
        lambdaFunctionSucceededEventDetails: LambdaFunctionSucceededEventDetails? = nil,
        lambdaFunctionTimedOutEventDetails: LambdaFunctionTimedOutEventDetails? = nil,
        mapIterationAbortedEventDetails: MapIterationEventDetails? = nil,
        mapIterationFailedEventDetails: MapIterationEventDetails? = nil,
        mapIterationStartedEventDetails: MapIterationEventDetails? = nil,
        mapIterationSucceededEventDetails: MapIterationEventDetails? = nil,
        mapStateStartedEventDetails: MapStateStartedEventDetails? = nil,
        previousEventId: Int = 0,
        stateEnteredEventDetails: StateEnteredEventDetails? = nil,
        stateExitedEventDetails: StateExitedEventDetails? = nil,
        taskFailedEventDetails: TaskFailedEventDetails? = nil,
        taskScheduledEventDetails: TaskScheduledEventDetails? = nil,
        taskStartFailedEventDetails: TaskStartFailedEventDetails? = nil,
        taskStartedEventDetails: TaskStartedEventDetails? = nil,
        taskSubmitFailedEventDetails: TaskSubmitFailedEventDetails? = nil,
        taskSubmittedEventDetails: TaskSubmittedEventDetails? = nil,
        taskSucceededEventDetails: TaskSucceededEventDetails? = nil,
        taskTimedOutEventDetails: TaskTimedOutEventDetails? = nil,
        timestamp: Date? = nil,
        type: HistoryEventType? = nil
    )
    {
        self.activityFailedEventDetails = activityFailedEventDetails
        self.activityScheduleFailedEventDetails = activityScheduleFailedEventDetails
        self.activityScheduledEventDetails = activityScheduledEventDetails
        self.activityStartedEventDetails = activityStartedEventDetails
        self.activitySucceededEventDetails = activitySucceededEventDetails
        self.activityTimedOutEventDetails = activityTimedOutEventDetails
        self.executionAbortedEventDetails = executionAbortedEventDetails
        self.executionFailedEventDetails = executionFailedEventDetails
        self.executionStartedEventDetails = executionStartedEventDetails
        self.executionSucceededEventDetails = executionSucceededEventDetails
        self.executionTimedOutEventDetails = executionTimedOutEventDetails
        self.id = id
        self.lambdaFunctionFailedEventDetails = lambdaFunctionFailedEventDetails
        self.lambdaFunctionScheduleFailedEventDetails = lambdaFunctionScheduleFailedEventDetails
        self.lambdaFunctionScheduledEventDetails = lambdaFunctionScheduledEventDetails
        self.lambdaFunctionStartFailedEventDetails = lambdaFunctionStartFailedEventDetails
        self.lambdaFunctionSucceededEventDetails = lambdaFunctionSucceededEventDetails
        self.lambdaFunctionTimedOutEventDetails = lambdaFunctionTimedOutEventDetails
        self.mapIterationAbortedEventDetails = mapIterationAbortedEventDetails
        self.mapIterationFailedEventDetails = mapIterationFailedEventDetails
        self.mapIterationStartedEventDetails = mapIterationStartedEventDetails
        self.mapIterationSucceededEventDetails = mapIterationSucceededEventDetails
        self.mapStateStartedEventDetails = mapStateStartedEventDetails
        self.previousEventId = previousEventId
        self.stateEnteredEventDetails = stateEnteredEventDetails
        self.stateExitedEventDetails = stateExitedEventDetails
        self.taskFailedEventDetails = taskFailedEventDetails
        self.taskScheduledEventDetails = taskScheduledEventDetails
        self.taskStartFailedEventDetails = taskStartFailedEventDetails
        self.taskStartedEventDetails = taskStartedEventDetails
        self.taskSubmitFailedEventDetails = taskSubmitFailedEventDetails
        self.taskSubmittedEventDetails = taskSubmittedEventDetails
        self.taskSucceededEventDetails = taskSucceededEventDetails
        self.taskTimedOutEventDetails = taskTimedOutEventDetails
        self.timestamp = timestamp
        self.type = type
    }
}

extension HistoryEvent: CustomDebugStringConvertible {
    public var debugDescription: String {
        "HistoryEvent(activityFailedEventDetails: \(String(describing: activityFailedEventDetails)), activityScheduleFailedEventDetails: \(String(describing: activityScheduleFailedEventDetails)), activityScheduledEventDetails: \(String(describing: activityScheduledEventDetails)), activityStartedEventDetails: \(String(describing: activityStartedEventDetails)), activitySucceededEventDetails: \(String(describing: activitySucceededEventDetails)), activityTimedOutEventDetails: \(String(describing: activityTimedOutEventDetails)), executionAbortedEventDetails: \(String(describing: executionAbortedEventDetails)), executionFailedEventDetails: \(String(describing: executionFailedEventDetails)), executionStartedEventDetails: \(String(describing: executionStartedEventDetails)), executionSucceededEventDetails: \(String(describing: executionSucceededEventDetails)), executionTimedOutEventDetails: \(String(describing: executionTimedOutEventDetails)), id: \(String(describing: id)), lambdaFunctionFailedEventDetails: \(String(describing: lambdaFunctionFailedEventDetails)), lambdaFunctionScheduleFailedEventDetails: \(String(describing: lambdaFunctionScheduleFailedEventDetails)), lambdaFunctionScheduledEventDetails: \(String(describing: lambdaFunctionScheduledEventDetails)), lambdaFunctionStartFailedEventDetails: \(String(describing: lambdaFunctionStartFailedEventDetails)), lambdaFunctionSucceededEventDetails: \(String(describing: lambdaFunctionSucceededEventDetails)), lambdaFunctionTimedOutEventDetails: \(String(describing: lambdaFunctionTimedOutEventDetails)), mapIterationAbortedEventDetails: \(String(describing: mapIterationAbortedEventDetails)), mapIterationFailedEventDetails: \(String(describing: mapIterationFailedEventDetails)), mapIterationStartedEventDetails: \(String(describing: mapIterationStartedEventDetails)), mapIterationSucceededEventDetails: \(String(describing: mapIterationSucceededEventDetails)), mapStateStartedEventDetails: \(String(describing: mapStateStartedEventDetails)), previousEventId: \(String(describing: previousEventId)), stateEnteredEventDetails: \(String(describing: stateEnteredEventDetails)), stateExitedEventDetails: \(String(describing: stateExitedEventDetails)), taskFailedEventDetails: \(String(describing: taskFailedEventDetails)), taskScheduledEventDetails: \(String(describing: taskScheduledEventDetails)), taskStartFailedEventDetails: \(String(describing: taskStartFailedEventDetails)), taskStartedEventDetails: \(String(describing: taskStartedEventDetails)), taskSubmitFailedEventDetails: \(String(describing: taskSubmitFailedEventDetails)), taskSubmittedEventDetails: \(String(describing: taskSubmittedEventDetails)), taskSucceededEventDetails: \(String(describing: taskSucceededEventDetails)), taskTimedOutEventDetails: \(String(describing: taskTimedOutEventDetails)), timestamp: \(String(describing: timestamp)), type: \(String(describing: type)))"}
}