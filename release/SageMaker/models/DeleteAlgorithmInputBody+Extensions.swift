// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteAlgorithmInputBody: Equatable {
    public let algorithmName: String?
}

extension DeleteAlgorithmInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case algorithmName = "AlgorithmName"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let algorithmNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .algorithmName)
        algorithmName = algorithmNameDecoded
    }
}