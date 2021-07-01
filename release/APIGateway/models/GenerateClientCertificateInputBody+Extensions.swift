// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GenerateClientCertificateInputBody: Equatable {
    public let description: String?
    public let tags: [String:String]?
}

extension GenerateClientCertificateInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case description
        case tags
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let tagsContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .tags)
        var tagsDecoded0: [String:String]? = nil
        if let tagsContainer = tagsContainer {
            tagsDecoded0 = [String:String]()
            for (key0, string0) in tagsContainer {
                if let string0 = string0 {
                    tagsDecoded0?[key0] = string0
                }
            }
        }
        tags = tagsDecoded0
    }
}