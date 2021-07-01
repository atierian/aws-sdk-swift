// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetDiskSnapshotOutputResponseBody: Equatable {
    public let diskSnapshot: DiskSnapshot?
}

extension GetDiskSnapshotOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case diskSnapshot
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let diskSnapshotDecoded = try containerValues.decodeIfPresent(DiskSnapshot.self, forKey: .diskSnapshot)
        diskSnapshot = diskSnapshotDecoded
    }
}