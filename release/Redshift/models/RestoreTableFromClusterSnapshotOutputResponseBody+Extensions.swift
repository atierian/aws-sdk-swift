// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct RestoreTableFromClusterSnapshotOutputResponseBody: Equatable {
    public let tableRestoreStatus: TableRestoreStatus?
}

extension RestoreTableFromClusterSnapshotOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case tableRestoreStatus = "TableRestoreStatus"
    }

    public init (from decoder: Decoder) throws {
        let topLevelContainer = try decoder.container(keyedBy: Key.self)
        let containerValues = try topLevelContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: Key("RestoreTableFromClusterSnapshotResult"))
        let tableRestoreStatusDecoded = try containerValues.decodeIfPresent(TableRestoreStatus.self, forKey: .tableRestoreStatus)
        tableRestoreStatus = tableRestoreStatusDecoded
    }
}