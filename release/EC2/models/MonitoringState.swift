// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum MonitoringState {
    case disabled
    case disabling
    case enabled
    case pending
    case sdkUnknown(String)
}

extension MonitoringState : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [MonitoringState] {
        return [
            .disabled,
            .disabling,
            .enabled,
            .pending,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .disabled: return "disabled"
        case .disabling: return "disabling"
        case .enabled: return "enabled"
        case .pending: return "pending"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = MonitoringState(rawValue: rawValue) ?? MonitoringState.sdkUnknown(rawValue)
    }
}