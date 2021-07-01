// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateExclusionsPreviewInputBody: Equatable {
    public let assessmentTemplateArn: String?
}

extension CreateExclusionsPreviewInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case assessmentTemplateArn
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let assessmentTemplateArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .assessmentTemplateArn)
        assessmentTemplateArn = assessmentTemplateArnDecoded
    }
}