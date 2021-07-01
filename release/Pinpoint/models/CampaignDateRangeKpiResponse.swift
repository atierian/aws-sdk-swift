// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Provides the results of a query that retrieved the data for a standard metric that applies to a campaign, and provides information about that query.</p>
public struct CampaignDateRangeKpiResponse: Equatable {
    /// <p>The unique identifier for the application that the metric applies to.</p>
    public let applicationId: String?
    /// <p>The unique identifier for the campaign that the metric applies to.</p>
    public let campaignId: String?
    /// <p>The last date and time of the date range that was used to filter the query results, in extended ISO 8601 format. The date range is inclusive.</p>
    public let endTime: Date?
    /// <p>The name of the metric, also referred to as a <i>key performance indicator (KPI)</i>, that the data was retrieved for. This value describes the associated metric and consists of two or more terms, which are comprised of lowercase alphanumeric characters, separated by a hyphen. For a list of possible values, see the <a href="https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html">Amazon Pinpoint Developer Guide</a>.</p>
    public let kpiName: String?
    /// <p>An array of objects that contains the results of the query. Each object contains the value for the metric and metadata about that value.</p>
    public let kpiResult: BaseKpiResult?
    /// <p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null for the Campaign Metrics resource because the resource returns all results in a single page.</p>
    public let nextToken: String?
    /// <p>The first date and time of the date range that was used to filter the query results, in extended ISO 8601 format. The date range is inclusive.</p>
    public let startTime: Date?

    public init (
        applicationId: String? = nil,
        campaignId: String? = nil,
        endTime: Date? = nil,
        kpiName: String? = nil,
        kpiResult: BaseKpiResult? = nil,
        nextToken: String? = nil,
        startTime: Date? = nil
    )
    {
        self.applicationId = applicationId
        self.campaignId = campaignId
        self.endTime = endTime
        self.kpiName = kpiName
        self.kpiResult = kpiResult
        self.nextToken = nextToken
        self.startTime = startTime
    }
}

extension CampaignDateRangeKpiResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CampaignDateRangeKpiResponse(applicationId: \(String(describing: applicationId)), campaignId: \(String(describing: campaignId)), endTime: \(String(describing: endTime)), kpiName: \(String(describing: kpiName)), kpiResult: \(String(describing: kpiResult)), nextToken: \(String(describing: nextToken)), startTime: \(String(describing: startTime)))"}
}