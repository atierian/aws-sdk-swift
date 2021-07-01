// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct StopExecutionInputBody: Equatable {
    public let executionArn: String?
    public let error: String?
    public let cause: String?
}

extension StopExecutionInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case cause
        case error
        case executionArn
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let executionArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .executionArn)
        executionArn = executionArnDecoded
        let errorDecoded = try containerValues.decodeIfPresent(String.self, forKey: .error)
        error = errorDecoded
        let causeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .cause)
        cause = causeDecoded
    }
}