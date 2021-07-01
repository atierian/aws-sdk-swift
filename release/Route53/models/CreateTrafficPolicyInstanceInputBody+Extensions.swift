// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateTrafficPolicyInstanceInputBody: Equatable {
    public let hostedZoneId: String?
    public let name: String?
    public let tTL: Int?
    public let trafficPolicyId: String?
    public let trafficPolicyVersion: Int?
}

extension CreateTrafficPolicyInstanceInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case hostedZoneId = "HostedZoneId"
        case name = "Name"
        case tTL = "TTL"
        case trafficPolicyId = "TrafficPolicyId"
        case trafficPolicyVersion = "TrafficPolicyVersion"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let hostedZoneIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .hostedZoneId)
        hostedZoneId = hostedZoneIdDecoded
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let tTLDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .tTL)
        tTL = tTLDecoded
        let trafficPolicyIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .trafficPolicyId)
        trafficPolicyId = trafficPolicyIdDecoded
        let trafficPolicyVersionDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .trafficPolicyVersion)
        trafficPolicyVersion = trafficPolicyVersionDecoded
    }
}