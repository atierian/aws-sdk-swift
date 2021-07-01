// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct StartModelInputBody: Equatable {
    public let minInferenceUnits: Int?
}

extension StartModelInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case minInferenceUnits = "MinInferenceUnits"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let minInferenceUnitsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .minInferenceUnits)
        minInferenceUnits = minInferenceUnitsDecoded
    }
}