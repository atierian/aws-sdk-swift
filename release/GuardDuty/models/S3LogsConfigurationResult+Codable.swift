// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension S3LogsConfigurationResult: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case status = "status"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let status = status {
            try encodeContainer.encode(status.rawValue, forKey: .status)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let statusDecoded = try containerValues.decodeIfPresent(DataSourceStatus.self, forKey: .status)
        status = statusDecoded
    }
}