// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeFlowDefinitionOutputResponseBody: Equatable {
    public let flowDefinitionArn: String?
    public let flowDefinitionName: String?
    public let flowDefinitionStatus: FlowDefinitionStatus?
    public let creationTime: Date?
    public let humanLoopRequestSource: HumanLoopRequestSource?
    public let humanLoopActivationConfig: HumanLoopActivationConfig?
    public let humanLoopConfig: HumanLoopConfig?
    public let outputConfig: FlowDefinitionOutputConfig?
    public let roleArn: String?
    public let failureReason: String?
}

extension DescribeFlowDefinitionOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case creationTime = "CreationTime"
        case failureReason = "FailureReason"
        case flowDefinitionArn = "FlowDefinitionArn"
        case flowDefinitionName = "FlowDefinitionName"
        case flowDefinitionStatus = "FlowDefinitionStatus"
        case humanLoopActivationConfig = "HumanLoopActivationConfig"
        case humanLoopConfig = "HumanLoopConfig"
        case humanLoopRequestSource = "HumanLoopRequestSource"
        case outputConfig = "OutputConfig"
        case roleArn = "RoleArn"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let flowDefinitionArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .flowDefinitionArn)
        flowDefinitionArn = flowDefinitionArnDecoded
        let flowDefinitionNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .flowDefinitionName)
        flowDefinitionName = flowDefinitionNameDecoded
        let flowDefinitionStatusDecoded = try containerValues.decodeIfPresent(FlowDefinitionStatus.self, forKey: .flowDefinitionStatus)
        flowDefinitionStatus = flowDefinitionStatusDecoded
        let creationTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .creationTime)
        creationTime = creationTimeDecoded
        let humanLoopRequestSourceDecoded = try containerValues.decodeIfPresent(HumanLoopRequestSource.self, forKey: .humanLoopRequestSource)
        humanLoopRequestSource = humanLoopRequestSourceDecoded
        let humanLoopActivationConfigDecoded = try containerValues.decodeIfPresent(HumanLoopActivationConfig.self, forKey: .humanLoopActivationConfig)
        humanLoopActivationConfig = humanLoopActivationConfigDecoded
        let humanLoopConfigDecoded = try containerValues.decodeIfPresent(HumanLoopConfig.self, forKey: .humanLoopConfig)
        humanLoopConfig = humanLoopConfigDecoded
        let outputConfigDecoded = try containerValues.decodeIfPresent(FlowDefinitionOutputConfig.self, forKey: .outputConfig)
        outputConfig = outputConfigDecoded
        let roleArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .roleArn)
        roleArn = roleArnDecoded
        let failureReasonDecoded = try containerValues.decodeIfPresent(String.self, forKey: .failureReason)
        failureReason = failureReasonDecoded
    }
}