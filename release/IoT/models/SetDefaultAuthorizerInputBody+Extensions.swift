// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct SetDefaultAuthorizerInputBody: Equatable {
    public let authorizerName: String?
}

extension SetDefaultAuthorizerInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case authorizerName
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let authorizerNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .authorizerName)
        authorizerName = authorizerNameDecoded
    }
}