// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListConnectionsOutputResponseBody: Equatable {
    public let connectionSummaryList: [ConnectionSummary]?
    public let nextToken: String?
}

extension ListConnectionsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case connectionSummaryList = "ConnectionSummaryList"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let connectionSummaryListContainer = try containerValues.decodeIfPresent([ConnectionSummary?].self, forKey: .connectionSummaryList)
        var connectionSummaryListDecoded0:[ConnectionSummary]? = nil
        if let connectionSummaryListContainer = connectionSummaryListContainer {
            connectionSummaryListDecoded0 = [ConnectionSummary]()
            for structure0 in connectionSummaryListContainer {
                if let structure0 = structure0 {
                    connectionSummaryListDecoded0?.append(structure0)
                }
            }
        }
        connectionSummaryList = connectionSummaryListDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}