// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetJobTemplateOutputResponseBody: Equatable {
    public let jobTemplate: JobTemplate?
}

extension GetJobTemplateOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case jobTemplate = "jobTemplate"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let jobTemplateDecoded = try containerValues.decodeIfPresent(JobTemplate.self, forKey: .jobTemplate)
        jobTemplate = jobTemplateDecoded
    }
}