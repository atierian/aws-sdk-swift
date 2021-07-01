// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateTrainingJobOutputResponseBody: Equatable {
    public let trainingJobArn: String?
}

extension CreateTrainingJobOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case trainingJobArn = "TrainingJobArn"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let trainingJobArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .trainingJobArn)
        trainingJobArn = trainingJobArnDecoded
    }
}