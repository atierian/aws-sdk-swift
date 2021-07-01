// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreatePolicyVersionOutputResponseBody: Equatable {
    public let policyVersion: PolicyVersion?
}

extension CreatePolicyVersionOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case policyVersion = "PolicyVersion"
    }

    public init (from decoder: Decoder) throws {
        let topLevelContainer = try decoder.container(keyedBy: Key.self)
        let containerValues = try topLevelContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: Key("CreatePolicyVersionResult"))
        let policyVersionDecoded = try containerValues.decodeIfPresent(PolicyVersion.self, forKey: .policyVersion)
        policyVersion = policyVersionDecoded
    }
}