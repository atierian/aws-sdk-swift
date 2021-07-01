// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateModelQualityJobDefinitionOutputResponseBody: Equatable {
    public let jobDefinitionArn: String?
}

extension CreateModelQualityJobDefinitionOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case jobDefinitionArn = "JobDefinitionArn"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let jobDefinitionArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .jobDefinitionArn)
        jobDefinitionArn = jobDefinitionArnDecoded
    }
}