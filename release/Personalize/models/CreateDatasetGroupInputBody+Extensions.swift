// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateDatasetGroupInputBody: Equatable {
    public let name: String?
    public let roleArn: String?
    public let kmsKeyArn: String?
}

extension CreateDatasetGroupInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case kmsKeyArn
        case name
        case roleArn
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let roleArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .roleArn)
        roleArn = roleArnDecoded
        let kmsKeyArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .kmsKeyArn)
        kmsKeyArn = kmsKeyArnDecoded
    }
}