// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension RelationalDatabaseEvent: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case createdAt
        case eventCategories
        case message
        case resource
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let createdAt = createdAt {
            try encodeContainer.encode(createdAt.timeIntervalSince1970, forKey: .createdAt)
        }
        if let eventCategories = eventCategories {
            var eventCategoriesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .eventCategories)
            for stringlist0 in eventCategories {
                try eventCategoriesContainer.encode(stringlist0)
            }
        }
        if let message = message {
            try encodeContainer.encode(message, forKey: .message)
        }
        if let resource = resource {
            try encodeContainer.encode(resource, forKey: .resource)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let resourceDecoded = try containerValues.decodeIfPresent(String.self, forKey: .resource)
        resource = resourceDecoded
        let createdAtDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .createdAt)
        createdAt = createdAtDecoded
        let messageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .message)
        message = messageDecoded
        let eventCategoriesContainer = try containerValues.decodeIfPresent([String?].self, forKey: .eventCategories)
        var eventCategoriesDecoded0:[String]? = nil
        if let eventCategoriesContainer = eventCategoriesContainer {
            eventCategoriesDecoded0 = [String]()
            for string0 in eventCategoriesContainer {
                if let string0 = string0 {
                    eventCategoriesDecoded0?.append(string0)
                }
            }
        }
        eventCategories = eventCategoriesDecoded0
    }
}