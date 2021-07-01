// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateAssessmentTargetOutputResponseBody: Equatable {
    public let assessmentTargetArn: String?
}

extension CreateAssessmentTargetOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case assessmentTargetArn
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let assessmentTargetArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .assessmentTargetArn)
        assessmentTargetArn = assessmentTargetArnDecoded
    }
}