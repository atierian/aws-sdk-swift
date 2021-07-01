// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension HlsInputSettings: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case bandwidth = "bandwidth"
        case bufferSegments = "bufferSegments"
        case retries = "retries"
        case retryInterval = "retryInterval"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if bandwidth != 0 {
            try encodeContainer.encode(bandwidth, forKey: .bandwidth)
        }
        if bufferSegments != 0 {
            try encodeContainer.encode(bufferSegments, forKey: .bufferSegments)
        }
        if retries != 0 {
            try encodeContainer.encode(retries, forKey: .retries)
        }
        if retryInterval != 0 {
            try encodeContainer.encode(retryInterval, forKey: .retryInterval)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let bandwidthDecoded = try containerValues.decode(Int.self, forKey: .bandwidth)
        bandwidth = bandwidthDecoded
        let bufferSegmentsDecoded = try containerValues.decode(Int.self, forKey: .bufferSegments)
        bufferSegments = bufferSegmentsDecoded
        let retriesDecoded = try containerValues.decode(Int.self, forKey: .retries)
        retries = retriesDecoded
        let retryIntervalDecoded = try containerValues.decode(Int.self, forKey: .retryInterval)
        retryInterval = retryIntervalDecoded
    }
}