// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListMonitoringSchedulesInput: Equatable {
    /// <p>A filter that returns only monitoring schedules created after a specified time.</p>
    public let creationTimeAfter: Date?
    /// <p>A filter that returns only monitoring schedules created before a specified time.</p>
    public let creationTimeBefore: Date?
    /// <p>Name of a specific endpoint to fetch schedules for.</p>
    public let endpointName: String?
    /// <p>A filter that returns only monitoring schedules modified after a specified time.</p>
    public let lastModifiedTimeAfter: Date?
    /// <p>A filter that returns only monitoring schedules modified before a specified time.</p>
    public let lastModifiedTimeBefore: Date?
    /// <p>The maximum number of jobs to return in the response. The default value is 10.</p>
    public let maxResults: Int?
    /// <p>Gets a list of the monitoring schedules for the specified monitoring job
    ///          definition.</p>
    public let monitoringJobDefinitionName: String?
    /// <p>A filter that returns only the monitoring schedules for the specified monitoring
    ///          type.</p>
    public let monitoringTypeEquals: MonitoringType?
    /// <p>Filter for monitoring schedules whose name contains a specified string.</p>
    public let nameContains: String?
    /// <p>The token returned if the response is truncated. To retrieve the next set of job
    ///          executions, use it in the next request.</p>
    public let nextToken: String?
    /// <p>Whether to sort results by <code>Status</code>, <code>CreationTime</code>,
    ///             <code>ScheduledTime</code> field. The default is <code>CreationTime</code>.</p>
    public let sortBy: MonitoringScheduleSortKey?
    /// <p>Whether to sort the results in <code>Ascending</code> or <code>Descending</code> order.
    ///          The default is <code>Descending</code>.</p>
    public let sortOrder: SortOrder?
    /// <p>A filter that returns only monitoring schedules modified before a specified time.</p>
    public let statusEquals: ScheduleStatus?

    public init (
        creationTimeAfter: Date? = nil,
        creationTimeBefore: Date? = nil,
        endpointName: String? = nil,
        lastModifiedTimeAfter: Date? = nil,
        lastModifiedTimeBefore: Date? = nil,
        maxResults: Int? = nil,
        monitoringJobDefinitionName: String? = nil,
        monitoringTypeEquals: MonitoringType? = nil,
        nameContains: String? = nil,
        nextToken: String? = nil,
        sortBy: MonitoringScheduleSortKey? = nil,
        sortOrder: SortOrder? = nil,
        statusEquals: ScheduleStatus? = nil
    )
    {
        self.creationTimeAfter = creationTimeAfter
        self.creationTimeBefore = creationTimeBefore
        self.endpointName = endpointName
        self.lastModifiedTimeAfter = lastModifiedTimeAfter
        self.lastModifiedTimeBefore = lastModifiedTimeBefore
        self.maxResults = maxResults
        self.monitoringJobDefinitionName = monitoringJobDefinitionName
        self.monitoringTypeEquals = monitoringTypeEquals
        self.nameContains = nameContains
        self.nextToken = nextToken
        self.sortBy = sortBy
        self.sortOrder = sortOrder
        self.statusEquals = statusEquals
    }
}

extension ListMonitoringSchedulesInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListMonitoringSchedulesInput(creationTimeAfter: \(String(describing: creationTimeAfter)), creationTimeBefore: \(String(describing: creationTimeBefore)), endpointName: \(String(describing: endpointName)), lastModifiedTimeAfter: \(String(describing: lastModifiedTimeAfter)), lastModifiedTimeBefore: \(String(describing: lastModifiedTimeBefore)), maxResults: \(String(describing: maxResults)), monitoringJobDefinitionName: \(String(describing: monitoringJobDefinitionName)), monitoringTypeEquals: \(String(describing: monitoringTypeEquals)), nameContains: \(String(describing: nameContains)), nextToken: \(String(describing: nextToken)), sortBy: \(String(describing: sortBy)), sortOrder: \(String(describing: sortOrder)), statusEquals: \(String(describing: statusEquals)))"}
}