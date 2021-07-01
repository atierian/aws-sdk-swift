// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension FunctionDefaultConfig: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case execution = "Execution"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let execution = execution {
            try encodeContainer.encode(execution, forKey: .execution)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let executionDecoded = try containerValues.decodeIfPresent(FunctionDefaultExecutionConfig.self, forKey: .execution)
        execution = executionDecoded
    }
}