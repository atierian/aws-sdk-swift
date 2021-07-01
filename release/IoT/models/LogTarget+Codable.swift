// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension LogTarget: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case targetName
        case targetType
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let targetName = targetName {
            try encodeContainer.encode(targetName, forKey: .targetName)
        }
        if let targetType = targetType {
            try encodeContainer.encode(targetType.rawValue, forKey: .targetType)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let targetTypeDecoded = try containerValues.decodeIfPresent(LogTargetType.self, forKey: .targetType)
        targetType = targetTypeDecoded
        let targetNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .targetName)
        targetName = targetNameDecoded
    }
}