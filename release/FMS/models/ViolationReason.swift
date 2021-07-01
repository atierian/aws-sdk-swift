// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ViolationReason {
    case fmscreatedsecuritygroupedited
    case missingexpectedroutetable
    case missingfirewall
    case missingfirewallsubnetinaz
    case networkfirewallpolicymodified
    case resourceincorrectwebacl
    case resourcemissingdnsfirewall
    case resourcemissingsecuritygroup
    case resourcemissingshieldprotection
    case resourcemissingwebacl
    case resourcemissingwebaclorshieldprotection
    case resourceviolatesauditsecuritygroup
    case securitygroupredundant
    case securitygroupunused
    case webaclmissingrulegroup
    case sdkUnknown(String)
}

extension ViolationReason : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ViolationReason] {
        return [
            .fmscreatedsecuritygroupedited,
            .missingexpectedroutetable,
            .missingfirewall,
            .missingfirewallsubnetinaz,
            .networkfirewallpolicymodified,
            .resourceincorrectwebacl,
            .resourcemissingdnsfirewall,
            .resourcemissingsecuritygroup,
            .resourcemissingshieldprotection,
            .resourcemissingwebacl,
            .resourcemissingwebaclorshieldprotection,
            .resourceviolatesauditsecuritygroup,
            .securitygroupredundant,
            .securitygroupunused,
            .webaclmissingrulegroup,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .fmscreatedsecuritygroupedited: return "FMS_CREATED_SECURITY_GROUP_EDITED"
        case .missingexpectedroutetable: return "MISSING_EXPECTED_ROUTE_TABLE"
        case .missingfirewall: return "MISSING_FIREWALL"
        case .missingfirewallsubnetinaz: return "MISSING_FIREWALL_SUBNET_IN_AZ"
        case .networkfirewallpolicymodified: return "NETWORK_FIREWALL_POLICY_MODIFIED"
        case .resourceincorrectwebacl: return "RESOURCE_INCORRECT_WEB_ACL"
        case .resourcemissingdnsfirewall: return "RESOURCE_MISSING_DNS_FIREWALL"
        case .resourcemissingsecuritygroup: return "RESOURCE_MISSING_SECURITY_GROUP"
        case .resourcemissingshieldprotection: return "RESOURCE_MISSING_SHIELD_PROTECTION"
        case .resourcemissingwebacl: return "RESOURCE_MISSING_WEB_ACL"
        case .resourcemissingwebaclorshieldprotection: return "RESOURCE_MISSING_WEB_ACL_OR_SHIELD_PROTECTION"
        case .resourceviolatesauditsecuritygroup: return "RESOURCE_VIOLATES_AUDIT_SECURITY_GROUP"
        case .securitygroupredundant: return "SECURITY_GROUP_REDUNDANT"
        case .securitygroupunused: return "SECURITY_GROUP_UNUSED"
        case .webaclmissingrulegroup: return "WEB_ACL_MISSING_RULE_GROUP"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ViolationReason(rawValue: rawValue) ?? ViolationReason.sdkUnknown(rawValue)
    }
}