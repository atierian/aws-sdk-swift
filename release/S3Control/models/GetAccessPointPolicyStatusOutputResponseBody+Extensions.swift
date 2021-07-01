// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetAccessPointPolicyStatusOutputResponseBody: Equatable {
    public let policyStatus: PolicyStatus?
}

extension GetAccessPointPolicyStatusOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case policyStatus = "PolicyStatus"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let policyStatusDecoded = try containerValues.decodeIfPresent(PolicyStatus.self, forKey: .policyStatus)
        policyStatus = policyStatusDecoded
    }
}