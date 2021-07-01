// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension HlsS3Settings: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case cannedAcl = "cannedAcl"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let cannedAcl = cannedAcl {
            try encodeContainer.encode(cannedAcl.rawValue, forKey: .cannedAcl)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let cannedAclDecoded = try containerValues.decodeIfPresent(S3CannedAcl.self, forKey: .cannedAcl)
        cannedAcl = cannedAclDecoded
    }
}