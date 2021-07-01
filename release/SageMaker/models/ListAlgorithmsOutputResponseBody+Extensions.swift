// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListAlgorithmsOutputResponseBody: Equatable {
    public let algorithmSummaryList: [AlgorithmSummary]?
    public let nextToken: String?
}

extension ListAlgorithmsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case algorithmSummaryList = "AlgorithmSummaryList"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let algorithmSummaryListContainer = try containerValues.decodeIfPresent([AlgorithmSummary?].self, forKey: .algorithmSummaryList)
        var algorithmSummaryListDecoded0:[AlgorithmSummary]? = nil
        if let algorithmSummaryListContainer = algorithmSummaryListContainer {
            algorithmSummaryListDecoded0 = [AlgorithmSummary]()
            for structure0 in algorithmSummaryListContainer {
                if let structure0 = structure0 {
                    algorithmSummaryListDecoded0?.append(structure0)
                }
            }
        }
        algorithmSummaryList = algorithmSummaryListDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}