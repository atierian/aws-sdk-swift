// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeAssessmentRunsInputBody: Equatable {
    public let assessmentRunArns: [String]?
}

extension DescribeAssessmentRunsInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case assessmentRunArns
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let assessmentRunArnsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .assessmentRunArns)
        var assessmentRunArnsDecoded0:[String]? = nil
        if let assessmentRunArnsContainer = assessmentRunArnsContainer {
            assessmentRunArnsDecoded0 = [String]()
            for string0 in assessmentRunArnsContainer {
                if let string0 = string0 {
                    assessmentRunArnsDecoded0?.append(string0)
                }
            }
        }
        assessmentRunArns = assessmentRunArnsDecoded0
    }
}