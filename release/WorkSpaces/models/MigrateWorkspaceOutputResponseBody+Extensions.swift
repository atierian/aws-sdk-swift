// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct MigrateWorkspaceOutputResponseBody: Equatable {
    public let sourceWorkspaceId: String?
    public let targetWorkspaceId: String?
}

extension MigrateWorkspaceOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case sourceWorkspaceId = "SourceWorkspaceId"
        case targetWorkspaceId = "TargetWorkspaceId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let sourceWorkspaceIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .sourceWorkspaceId)
        sourceWorkspaceId = sourceWorkspaceIdDecoded
        let targetWorkspaceIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .targetWorkspaceId)
        targetWorkspaceId = targetWorkspaceIdDecoded
    }
}