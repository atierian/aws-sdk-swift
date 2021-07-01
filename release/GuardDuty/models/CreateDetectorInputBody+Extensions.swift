// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateDetectorInputBody: Equatable {
    public let enable: Bool
    public let clientToken: String?
    public let findingPublishingFrequency: FindingPublishingFrequency?
    public let dataSources: DataSourceConfigurations?
    public let tags: [String:String]?
}

extension CreateDetectorInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case clientToken = "clientToken"
        case dataSources = "dataSources"
        case enable = "enable"
        case findingPublishingFrequency = "findingPublishingFrequency"
        case tags = "tags"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let enableDecoded = try containerValues.decode(Bool.self, forKey: .enable)
        enable = enableDecoded
        let clientTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .clientToken)
        clientToken = clientTokenDecoded
        let findingPublishingFrequencyDecoded = try containerValues.decodeIfPresent(FindingPublishingFrequency.self, forKey: .findingPublishingFrequency)
        findingPublishingFrequency = findingPublishingFrequencyDecoded
        let dataSourcesDecoded = try containerValues.decodeIfPresent(DataSourceConfigurations.self, forKey: .dataSources)
        dataSources = dataSourcesDecoded
        let tagsContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .tags)
        var tagsDecoded0: [String:String]? = nil
        if let tagsContainer = tagsContainer {
            tagsDecoded0 = [String:String]()
            for (key0, tagvalue0) in tagsContainer {
                if let tagvalue0 = tagvalue0 {
                    tagsDecoded0?[key0] = tagvalue0
                }
            }
        }
        tags = tagsDecoded0
    }
}