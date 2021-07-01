// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum Feature {
    case all
    case bluetooth
    case lists
    case networkProfile
    case notifications
    case settings
    case skills
    case volume
    case sdkUnknown(String)
}

extension Feature : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [Feature] {
        return [
            .all,
            .bluetooth,
            .lists,
            .networkProfile,
            .notifications,
            .settings,
            .skills,
            .volume,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .all: return "ALL"
        case .bluetooth: return "BLUETOOTH"
        case .lists: return "LISTS"
        case .networkProfile: return "NETWORK_PROFILE"
        case .notifications: return "NOTIFICATIONS"
        case .settings: return "SETTINGS"
        case .skills: return "SKILLS"
        case .volume: return "VOLUME"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = Feature(rawValue: rawValue) ?? Feature.sdkUnknown(rawValue)
    }
}