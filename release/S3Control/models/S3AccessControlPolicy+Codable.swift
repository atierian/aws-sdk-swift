// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension S3AccessControlPolicy: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case accessControlList = "AccessControlList"
        case cannedAccessControlList = "CannedAccessControlList"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://awss3control.amazonaws.com/doc/2018-08-20/", forKey: Key("xmlns"))
        }
        if let accessControlList = accessControlList {
            try container.encode(accessControlList, forKey: Key("accessControlList"))
        }
        if let cannedAccessControlList = cannedAccessControlList {
            try container.encode(cannedAccessControlList, forKey: Key("cannedAccessControlList"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let accessControlListDecoded = try containerValues.decodeIfPresent(S3AccessControlList.self, forKey: .accessControlList)
        accessControlList = accessControlListDecoded
        let cannedAccessControlListDecoded = try containerValues.decodeIfPresent(S3CannedAccessControlList.self, forKey: .cannedAccessControlList)
        cannedAccessControlList = cannedAccessControlListDecoded
    }
}