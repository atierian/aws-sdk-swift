// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeDBSnapshotAttributesOutputResponseBody: Equatable {
    public let dBSnapshotAttributesResult: DBSnapshotAttributesResult?
}

extension DescribeDBSnapshotAttributesOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case dBSnapshotAttributesResult = "DBSnapshotAttributesResult"
    }

    public init (from decoder: Decoder) throws {
        let topLevelContainer = try decoder.container(keyedBy: Key.self)
        let containerValues = try topLevelContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: Key("DescribeDBSnapshotAttributesResult"))
        let dBSnapshotAttributesResultDecoded = try containerValues.decodeIfPresent(DBSnapshotAttributesResult.self, forKey: .dBSnapshotAttributesResult)
        dBSnapshotAttributesResult = dBSnapshotAttributesResultDecoded
    }
}