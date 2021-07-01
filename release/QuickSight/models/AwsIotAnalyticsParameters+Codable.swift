// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AwsIotAnalyticsParameters: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case dataSetName = "DataSetName"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let dataSetName = dataSetName {
            try encodeContainer.encode(dataSetName, forKey: .dataSetName)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let dataSetNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .dataSetName)
        dataSetName = dataSetNameDecoded
    }
}