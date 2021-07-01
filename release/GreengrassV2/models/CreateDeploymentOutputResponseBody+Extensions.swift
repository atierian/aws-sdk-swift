// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateDeploymentOutputResponseBody: Equatable {
    public let deploymentId: String?
    public let iotJobId: String?
    public let iotJobArn: String?
}

extension CreateDeploymentOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case deploymentId
        case iotJobArn
        case iotJobId
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let deploymentIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .deploymentId)
        deploymentId = deploymentIdDecoded
        let iotJobIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .iotJobId)
        iotJobId = iotJobIdDecoded
        let iotJobArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .iotJobArn)
        iotJobArn = iotJobArnDecoded
    }
}