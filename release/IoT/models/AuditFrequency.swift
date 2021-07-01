// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum AuditFrequency {
    case biweekly
    case daily
    case monthly
    case weekly
    case sdkUnknown(String)
}

extension AuditFrequency : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [AuditFrequency] {
        return [
            .biweekly,
            .daily,
            .monthly,
            .weekly,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .biweekly: return "BIWEEKLY"
        case .daily: return "DAILY"
        case .monthly: return "MONTHLY"
        case .weekly: return "WEEKLY"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = AuditFrequency(rawValue: rawValue) ?? AuditFrequency.sdkUnknown(rawValue)
    }
}