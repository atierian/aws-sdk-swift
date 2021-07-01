// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListConfigurationSetsOutputResponseBody: Equatable {
    public let configurationSets: [String]?
    public let nextToken: String?
}

extension ListConfigurationSetsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case configurationSets = "ConfigurationSets"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let configurationSetsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .configurationSets)
        var configurationSetsDecoded0:[String]? = nil
        if let configurationSetsContainer = configurationSetsContainer {
            configurationSetsDecoded0 = [String]()
            for string0 in configurationSetsContainer {
                if let string0 = string0 {
                    configurationSetsDecoded0?.append(string0)
                }
            }
        }
        configurationSets = configurationSetsDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}