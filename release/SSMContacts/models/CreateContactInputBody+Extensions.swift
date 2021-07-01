// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateContactInputBody: Equatable {
    public let alias: String?
    public let displayName: String?
    public let type: ContactType?
    public let plan: Plan?
    public let tags: [Tag]?
    public let idempotencyToken: String?
}

extension CreateContactInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case alias = "Alias"
        case displayName = "DisplayName"
        case idempotencyToken = "IdempotencyToken"
        case plan = "Plan"
        case tags = "Tags"
        case type = "Type"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let aliasDecoded = try containerValues.decodeIfPresent(String.self, forKey: .alias)
        alias = aliasDecoded
        let displayNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .displayName)
        displayName = displayNameDecoded
        let typeDecoded = try containerValues.decodeIfPresent(ContactType.self, forKey: .type)
        type = typeDecoded
        let planDecoded = try containerValues.decodeIfPresent(Plan.self, forKey: .plan)
        plan = planDecoded
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
        let idempotencyTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .idempotencyToken)
        idempotencyToken = idempotencyTokenDecoded
    }
}