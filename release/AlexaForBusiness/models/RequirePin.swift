// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum RequirePin {
    case no
    case `optional`
    case yes
    case sdkUnknown(String)
}

extension RequirePin : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [RequirePin] {
        return [
            .no,
            .optional,
            .yes,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .no: return "NO"
        case .optional: return "OPTIONAL"
        case .yes: return "YES"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = RequirePin(rawValue: rawValue) ?? RequirePin.sdkUnknown(rawValue)
    }
}