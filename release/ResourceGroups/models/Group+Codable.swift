// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Group: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case description = "Description"
        case groupArn = "GroupArn"
        case name = "Name"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if let groupArn = groupArn {
            try encodeContainer.encode(groupArn, forKey: .groupArn)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let groupArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .groupArn)
        groupArn = groupArnDecoded
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
    }
}