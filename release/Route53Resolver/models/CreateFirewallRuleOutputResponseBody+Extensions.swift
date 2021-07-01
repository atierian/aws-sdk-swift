// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateFirewallRuleOutputResponseBody: Equatable {
    public let firewallRule: FirewallRule?
}

extension CreateFirewallRuleOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case firewallRule = "FirewallRule"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let firewallRuleDecoded = try containerValues.decodeIfPresent(FirewallRule.self, forKey: .firewallRule)
        firewallRule = firewallRuleDecoded
    }
}