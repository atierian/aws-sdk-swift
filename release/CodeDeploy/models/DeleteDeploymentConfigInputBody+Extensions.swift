// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteDeploymentConfigInputBody: Equatable {
    public let deploymentConfigName: String?
}

extension DeleteDeploymentConfigInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case deploymentConfigName
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let deploymentConfigNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .deploymentConfigName)
        deploymentConfigName = deploymentConfigNameDecoded
    }
}