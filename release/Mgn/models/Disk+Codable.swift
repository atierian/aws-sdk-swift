// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Disk: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case bytes
        case deviceName
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if bytes != 0 {
            try encodeContainer.encode(bytes, forKey: .bytes)
        }
        if let deviceName = deviceName {
            try encodeContainer.encode(deviceName, forKey: .deviceName)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let deviceNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .deviceName)
        deviceName = deviceNameDecoded
        let bytesDecoded = try containerValues.decode(Int.self, forKey: .bytes)
        bytes = bytesDecoded
    }
}