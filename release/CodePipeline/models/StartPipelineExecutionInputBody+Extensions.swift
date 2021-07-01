// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct StartPipelineExecutionInputBody: Equatable {
    public let name: String?
    public let clientRequestToken: String?
}

extension StartPipelineExecutionInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case clientRequestToken
        case name
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let clientRequestTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .clientRequestToken)
        clientRequestToken = clientRequestTokenDecoded
    }
}