// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Container: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case imageUris
        case region
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let imageUris = imageUris {
            var imageUrisContainer = encodeContainer.nestedUnkeyedContainer(forKey: .imageUris)
            for stringlist0 in imageUris {
                try imageUrisContainer.encode(stringlist0)
            }
        }
        if let region = region {
            try encodeContainer.encode(region, forKey: .region)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let regionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .region)
        region = regionDecoded
        let imageUrisContainer = try containerValues.decodeIfPresent([String?].self, forKey: .imageUris)
        var imageUrisDecoded0:[String]? = nil
        if let imageUrisContainer = imageUrisContainer {
            imageUrisDecoded0 = [String]()
            for string0 in imageUrisContainer {
                if let string0 = string0 {
                    imageUrisDecoded0?.append(string0)
                }
            }
        }
        imageUris = imageUrisDecoded0
    }
}