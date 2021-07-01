// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeAccountOverviewInputBody: Equatable {
    public let fromTime: Date?
    public let toTime: Date?
}

extension DescribeAccountOverviewInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case fromTime = "FromTime"
        case toTime = "ToTime"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let fromTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .fromTime)
        fromTime = fromTimeDecoded
        let toTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .toTime)
        toTime = toTimeDecoded
    }
}