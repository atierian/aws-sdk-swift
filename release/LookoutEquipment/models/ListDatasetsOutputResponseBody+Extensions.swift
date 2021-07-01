// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListDatasetsOutputResponseBody: Equatable {
    public let nextToken: String?
    public let datasetSummaries: [DatasetSummary]?
}

extension ListDatasetsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case datasetSummaries = "DatasetSummaries"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        let datasetSummariesContainer = try containerValues.decodeIfPresent([DatasetSummary?].self, forKey: .datasetSummaries)
        var datasetSummariesDecoded0:[DatasetSummary]? = nil
        if let datasetSummariesContainer = datasetSummariesContainer {
            datasetSummariesDecoded0 = [DatasetSummary]()
            for structure0 in datasetSummariesContainer {
                if let structure0 = structure0 {
                    datasetSummariesDecoded0?.append(structure0)
                }
            }
        }
        datasetSummaries = datasetSummariesDecoded0
    }
}