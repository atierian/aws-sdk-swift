// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeApplicationSnapshotInputBody: Equatable {
    public let applicationName: String?
    public let snapshotName: String?
}

extension DescribeApplicationSnapshotInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case applicationName = "ApplicationName"
        case snapshotName = "SnapshotName"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let applicationNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .applicationName)
        applicationName = applicationNameDecoded
        let snapshotNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .snapshotName)
        snapshotName = snapshotNameDecoded
    }
}