// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ScalingType {
    case auto
    case linear
    case logarithmic
    case reverselogarithmic
    case sdkUnknown(String)
}

extension ScalingType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ScalingType] {
        return [
            .auto,
            .linear,
            .logarithmic,
            .reverselogarithmic,
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
        case .linear: return "Linear"
        case .logarithmic: return "Logarithmic"
        case .reverselogarithmic: return "ReverseLogarithmic"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ScalingType(rawValue: rawValue) ?? ScalingType.sdkUnknown(rawValue)
    }
}