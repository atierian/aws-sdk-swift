// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateDBSubnetGroupOutputResponseBody: Equatable {
    public let dBSubnetGroup: DBSubnetGroup?
}

extension CreateDBSubnetGroupOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case dBSubnetGroup = "DBSubnetGroup"
    }

    public init (from decoder: Decoder) throws {
        let topLevelContainer = try decoder.container(keyedBy: Key.self)
        let containerValues = try topLevelContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: Key("CreateDBSubnetGroupResult"))
        let dBSubnetGroupDecoded = try containerValues.decodeIfPresent(DBSubnetGroup.self, forKey: .dBSubnetGroup)
        dBSubnetGroup = dBSubnetGroupDecoded
    }
}