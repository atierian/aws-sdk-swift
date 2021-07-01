// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CloneBackendInputBody: Equatable {
    public let targetEnvironmentName: String?
}

extension CloneBackendInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case targetEnvironmentName = "targetEnvironmentName"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let targetEnvironmentNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .targetEnvironmentName)
        targetEnvironmentName = targetEnvironmentNameDecoded
    }
}