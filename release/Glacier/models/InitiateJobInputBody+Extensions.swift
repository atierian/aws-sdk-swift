// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct InitiateJobInputBody: Equatable {
    public let jobParameters: JobParameters?
}

extension InitiateJobInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case jobParameters
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let jobParametersDecoded = try containerValues.decodeIfPresent(JobParameters.self, forKey: .jobParameters)
        jobParameters = jobParametersDecoded
    }
}