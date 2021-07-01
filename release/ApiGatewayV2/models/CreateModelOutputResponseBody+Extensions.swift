// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateModelOutputResponseBody: Equatable {
    public let contentType: String?
    public let description: String?
    public let modelId: String?
    public let name: String?
    public let schema: String?
}

extension CreateModelOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case contentType = "contentType"
        case description = "description"
        case modelId = "modelId"
        case name = "name"
        case schema = "schema"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let contentTypeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .contentType)
        contentType = contentTypeDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let modelIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .modelId)
        modelId = modelIdDecoded
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let schemaDecoded = try containerValues.decodeIfPresent(String.self, forKey: .schema)
        schema = schemaDecoded
    }
}