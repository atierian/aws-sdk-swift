// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListResourcesInputBody: Equatable {
    public let filterConditionList: [FilterCondition]?
    public let maxResults: Int?
    public let nextToken: String?
}

extension ListResourcesInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case filterConditionList = "FilterConditionList"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let filterConditionListContainer = try containerValues.decodeIfPresent([FilterCondition?].self, forKey: .filterConditionList)
        var filterConditionListDecoded0:[FilterCondition]? = nil
        if let filterConditionListContainer = filterConditionListContainer {
            filterConditionListDecoded0 = [FilterCondition]()
            for structure0 in filterConditionListContainer {
                if let structure0 = structure0 {
                    filterConditionListDecoded0?.append(structure0)
                }
            }
        }
        filterConditionList = filterConditionListDecoded0
        let maxResultsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .maxResults)
        maxResults = maxResultsDecoded
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}