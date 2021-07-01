// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateEndpointInputBody: Equatable {
    public let endpointName: String?
    public let endpointConfigName: String?
    public let tags: [Tag]?
}

extension CreateEndpointInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case endpointConfigName = "EndpointConfigName"
        case endpointName = "EndpointName"
        case tags = "Tags"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let endpointNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .endpointName)
        endpointName = endpointNameDecoded
        let endpointConfigNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .endpointConfigName)
        endpointConfigName = endpointConfigNameDecoded
        let tagsContainer = try containerValues.decodeIfPresent([Tag?].self, forKey: .tags)
        var tagsDecoded0:[Tag]? = nil
        if let tagsContainer = tagsContainer {
            tagsDecoded0 = [Tag]()
            for structure0 in tagsContainer {
                if let structure0 = structure0 {
                    tagsDecoded0?.append(structure0)
                }
            }
        }
        tags = tagsDecoded0
    }
}