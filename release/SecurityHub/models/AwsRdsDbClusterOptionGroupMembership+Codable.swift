// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AwsRdsDbClusterOptionGroupMembership: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case dbClusterOptionGroupName = "DbClusterOptionGroupName"
        case status = "Status"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let dbClusterOptionGroupName = dbClusterOptionGroupName {
            try encodeContainer.encode(dbClusterOptionGroupName, forKey: .dbClusterOptionGroupName)
        }
        if let status = status {
            try encodeContainer.encode(status, forKey: .status)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let dbClusterOptionGroupNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .dbClusterOptionGroupName)
        dbClusterOptionGroupName = dbClusterOptionGroupNameDecoded
        let statusDecoded = try containerValues.decodeIfPresent(String.self, forKey: .status)
        status = statusDecoded
    }
}