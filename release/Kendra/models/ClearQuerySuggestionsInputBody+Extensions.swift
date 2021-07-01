// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ClearQuerySuggestionsInputBody: Equatable {
    public let indexId: String?
}

extension ClearQuerySuggestionsInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case indexId = "IndexId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let indexIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .indexId)
        indexId = indexIdDecoded
    }
}