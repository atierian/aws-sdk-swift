// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum AccessStatus {
    case disabled
    case enabled
    case underChange
    case sdkUnknown(String)
}

extension AccessStatus : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [AccessStatus] {
        return [
            .disabled,
            .enabled,
            .underChange,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .disabled: return "DISABLED"
        case .enabled: return "ENABLED"
        case .underChange: return "UNDER_CHANGE"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = AccessStatus(rawValue: rawValue) ?? AccessStatus.sdkUnknown(rawValue)
    }
}