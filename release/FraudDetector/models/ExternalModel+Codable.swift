// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ExternalModel: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case arn
        case createdTime
        case inputConfiguration
        case invokeModelEndpointRoleArn
        case lastUpdatedTime
        case modelEndpoint
        case modelEndpointStatus
        case modelSource
        case outputConfiguration
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let arn = arn {
            try encodeContainer.encode(arn, forKey: .arn)
        }
        if let createdTime = createdTime {
            try encodeContainer.encode(createdTime, forKey: .createdTime)
        }
        if let inputConfiguration = inputConfiguration {
            try encodeContainer.encode(inputConfiguration, forKey: .inputConfiguration)
        }
        if let invokeModelEndpointRoleArn = invokeModelEndpointRoleArn {
            try encodeContainer.encode(invokeModelEndpointRoleArn, forKey: .invokeModelEndpointRoleArn)
        }
        if let lastUpdatedTime = lastUpdatedTime {
            try encodeContainer.encode(lastUpdatedTime, forKey: .lastUpdatedTime)
        }
        if let modelEndpoint = modelEndpoint {
            try encodeContainer.encode(modelEndpoint, forKey: .modelEndpoint)
        }
        if let modelEndpointStatus = modelEndpointStatus {
            try encodeContainer.encode(modelEndpointStatus.rawValue, forKey: .modelEndpointStatus)
        }
        if let modelSource = modelSource {
            try encodeContainer.encode(modelSource.rawValue, forKey: .modelSource)
        }
        if let outputConfiguration = outputConfiguration {
            try encodeContainer.encode(outputConfiguration, forKey: .outputConfiguration)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let modelEndpointDecoded = try containerValues.decodeIfPresent(String.self, forKey: .modelEndpoint)
        modelEndpoint = modelEndpointDecoded
        let modelSourceDecoded = try containerValues.decodeIfPresent(ModelSource.self, forKey: .modelSource)
        modelSource = modelSourceDecoded
        let invokeModelEndpointRoleArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .invokeModelEndpointRoleArn)
        invokeModelEndpointRoleArn = invokeModelEndpointRoleArnDecoded
        let inputConfigurationDecoded = try containerValues.decodeIfPresent(ModelInputConfiguration.self, forKey: .inputConfiguration)
        inputConfiguration = inputConfigurationDecoded
        let outputConfigurationDecoded = try containerValues.decodeIfPresent(ModelOutputConfiguration.self, forKey: .outputConfiguration)
        outputConfiguration = outputConfigurationDecoded
        let modelEndpointStatusDecoded = try containerValues.decodeIfPresent(ModelEndpointStatus.self, forKey: .modelEndpointStatus)
        modelEndpointStatus = modelEndpointStatusDecoded
        let lastUpdatedTimeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .lastUpdatedTime)
        lastUpdatedTime = lastUpdatedTimeDecoded
        let createdTimeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .createdTime)
        createdTime = createdTimeDecoded
        let arnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .arn)
        arn = arnDecoded
    }
}