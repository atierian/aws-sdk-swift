// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeAttackInputBody: Equatable {
    public let attackId: String?
}

extension DescribeAttackInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case attackId = "AttackId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let attackIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .attackId)
        attackId = attackIdDecoded
    }
}