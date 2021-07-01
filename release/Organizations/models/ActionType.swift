// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ActionType {
    case addOrganizationsServiceLinkedRole
    case approveAllFeatures
    case enableAllFeatures
    case inviteAccountToOrganization
    case sdkUnknown(String)
}

extension ActionType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ActionType] {
        return [
            .addOrganizationsServiceLinkedRole,
            .approveAllFeatures,
            .enableAllFeatures,
            .inviteAccountToOrganization,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .addOrganizationsServiceLinkedRole: return "ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE"
        case .approveAllFeatures: return "APPROVE_ALL_FEATURES"
        case .enableAllFeatures: return "ENABLE_ALL_FEATURES"
        case .inviteAccountToOrganization: return "INVITE"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ActionType(rawValue: rawValue) ?? ActionType.sdkUnknown(rawValue)
    }
}