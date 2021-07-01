// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum TlsPolicy {
    case `optional`
    case require
    case sdkUnknown(String)
}

extension TlsPolicy : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [TlsPolicy] {
        return [
            .optional,
            .require,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .optional: return "Optional"
        case .require: return "Require"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = TlsPolicy(rawValue: rawValue) ?? TlsPolicy.sdkUnknown(rawValue)
    }
}