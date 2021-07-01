// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct SearchFacesInputBody: Equatable {
    public let collectionId: String?
    public let faceId: String?
    public let maxFaces: Int?
    public let faceMatchThreshold: Float?
}

extension SearchFacesInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case collectionId = "CollectionId"
        case faceId = "FaceId"
        case faceMatchThreshold = "FaceMatchThreshold"
        case maxFaces = "MaxFaces"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let collectionIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .collectionId)
        collectionId = collectionIdDecoded
        let faceIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .faceId)
        faceId = faceIdDecoded
        let maxFacesDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .maxFaces)
        maxFaces = maxFacesDecoded
        let faceMatchThresholdDecoded = try containerValues.decodeIfPresent(Float.self, forKey: .faceMatchThreshold)
        faceMatchThreshold = faceMatchThresholdDecoded
    }
}