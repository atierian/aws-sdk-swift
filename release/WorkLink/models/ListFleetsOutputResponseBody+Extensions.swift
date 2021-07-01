// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListFleetsOutputResponseBody: Equatable {
    public let fleetSummaryList: [FleetSummary]?
    public let nextToken: String?
}

extension ListFleetsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case fleetSummaryList = "FleetSummaryList"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let fleetSummaryListContainer = try containerValues.decodeIfPresent([FleetSummary?].self, forKey: .fleetSummaryList)
        var fleetSummaryListDecoded0:[FleetSummary]? = nil
        if let fleetSummaryListContainer = fleetSummaryListContainer {
            fleetSummaryListDecoded0 = [FleetSummary]()
            for structure0 in fleetSummaryListContainer {
                if let structure0 = structure0 {
                    fleetSummaryListDecoded0?.append(structure0)
                }
            }
        }
        fleetSummaryList = fleetSummaryListDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}