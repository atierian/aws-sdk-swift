// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetImageRecipeOutputResponseBody: Equatable {
    public let requestId: String?
    public let imageRecipe: ImageRecipe?
}

extension GetImageRecipeOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case imageRecipe
        case requestId
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let requestIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .requestId)
        requestId = requestIdDecoded
        let imageRecipeDecoded = try containerValues.decodeIfPresent(ImageRecipe.self, forKey: .imageRecipe)
        imageRecipe = imageRecipeDecoded
    }
}