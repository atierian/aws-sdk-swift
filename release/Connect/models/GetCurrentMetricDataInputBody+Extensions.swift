// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetCurrentMetricDataInputBody: Equatable {
    public let filters: Filters?
    public let groupings: [Grouping]?
    public let currentMetrics: [CurrentMetric]?
    public let nextToken: String?
    public let maxResults: Int
}

extension GetCurrentMetricDataInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case currentMetrics = "CurrentMetrics"
        case filters = "Filters"
        case groupings = "Groupings"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let filtersDecoded = try containerValues.decodeIfPresent(Filters.self, forKey: .filters)
        filters = filtersDecoded
        let groupingsContainer = try containerValues.decodeIfPresent([Grouping?].self, forKey: .groupings)
        var groupingsDecoded0:[Grouping]? = nil
        if let groupingsContainer = groupingsContainer {
            groupingsDecoded0 = [Grouping]()
            for string0 in groupingsContainer {
                if let string0 = string0 {
                    groupingsDecoded0?.append(string0)
                }
            }
        }
        groupings = groupingsDecoded0
        let currentMetricsContainer = try containerValues.decodeIfPresent([CurrentMetric?].self, forKey: .currentMetrics)
        var currentMetricsDecoded0:[CurrentMetric]? = nil
        if let currentMetricsContainer = currentMetricsContainer {
            currentMetricsDecoded0 = [CurrentMetric]()
            for structure0 in currentMetricsContainer {
                if let structure0 = structure0 {
                    currentMetricsDecoded0?.append(structure0)
                }
            }
        }
        currentMetrics = currentMetricsDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        let maxResultsDecoded = try containerValues.decode(Int.self, forKey: .maxResults)
        maxResults = maxResultsDecoded
    }
}