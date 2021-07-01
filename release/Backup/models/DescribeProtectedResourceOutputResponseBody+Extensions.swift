// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeProtectedResourceOutputResponseBody: Equatable {
    public let resourceArn: String?
    public let resourceType: String?
    public let lastBackupTime: Date?
}

extension DescribeProtectedResourceOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case lastBackupTime = "LastBackupTime"
        case resourceArn = "ResourceArn"
        case resourceType = "ResourceType"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let resourceArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .resourceArn)
        resourceArn = resourceArnDecoded
        let resourceTypeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .resourceType)
        resourceType = resourceTypeDecoded
        let lastBackupTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastBackupTime)
        lastBackupTime = lastBackupTimeDecoded
    }
}