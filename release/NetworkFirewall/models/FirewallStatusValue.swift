// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum FirewallStatusValue {
    case deleting
    case provisioning
    case ready
    case sdkUnknown(String)
}

extension FirewallStatusValue : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [FirewallStatusValue] {
        return [
            .deleting,
            .provisioning,
            .ready,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .deleting: return "DELETING"
        case .provisioning: return "PROVISIONING"
        case .ready: return "READY"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = FirewallStatusValue(rawValue: rawValue) ?? FirewallStatusValue.sdkUnknown(rawValue)
    }
}