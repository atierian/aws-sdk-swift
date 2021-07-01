// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateFirewallPolicyInputBody: Equatable {
    public let firewallPolicyName: String?
    public let firewallPolicy: FirewallPolicy?
    public let description: String?
    public let tags: [Tag]?
    public let dryRun: Bool
}

extension CreateFirewallPolicyInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case description = "Description"
        case dryRun = "DryRun"
        case firewallPolicy = "FirewallPolicy"
        case firewallPolicyName = "FirewallPolicyName"
        case tags = "Tags"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let firewallPolicyNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .firewallPolicyName)
        firewallPolicyName = firewallPolicyNameDecoded
        let firewallPolicyDecoded = try containerValues.decodeIfPresent(FirewallPolicy.self, forKey: .firewallPolicy)
        firewallPolicy = firewallPolicyDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let tagsContainer = try containerValues.decodeIfPresent([Tag?].self, forKey: .tags)
        var tagsDecoded0:[Tag]? = nil
        if let tagsContainer = tagsContainer {
            tagsDecoded0 = [Tag]()
            for structure0 in tagsContainer {
                if let structure0 = structure0 {
                    tagsDecoded0?.append(structure0)
                }
            }
        }
        tags = tagsDecoded0
        let dryRunDecoded = try containerValues.decode(Bool.self, forKey: .dryRun)
        dryRun = dryRunDecoded
    }
}