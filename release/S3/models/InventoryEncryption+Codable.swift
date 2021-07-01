// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension InventoryEncryption: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case sSEKMS = "SSE-KMS"
        case sSES3 = "SSE-S3"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://s3.amazonaws.com/doc/2006-03-01/", forKey: Key("xmlns"))
        }
        if let sSEKMS = sSEKMS {
            try container.encode(sSEKMS, forKey: Key("SSE-KMS"))
        }
        if let sSES3 = sSES3 {
            try container.encode(sSES3, forKey: Key("SSE-S3"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let sSES3Decoded = try containerValues.decodeIfPresent(SSES3.self, forKey: .sSES3)
        sSES3 = sSES3Decoded
        let sSEKMSDecoded = try containerValues.decodeIfPresent(SSEKMS.self, forKey: .sSEKMS)
        sSEKMS = sSEKMSDecoded
    }
}