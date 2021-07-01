// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ExecutionMode {
    case auto
    case interactive
    case sdkUnknown(String)
}

extension ExecutionMode : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ExecutionMode] {
        return [
            .auto,
            .interactive,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .auto: return "Auto"
        case .interactive: return "Interactive"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ExecutionMode(rawValue: rawValue) ?? ExecutionMode.sdkUnknown(rawValue)
    }
}