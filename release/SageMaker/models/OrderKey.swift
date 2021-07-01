// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum OrderKey {
    case ascending
    case descending
    case sdkUnknown(String)
}

extension OrderKey : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [OrderKey] {
        return [
            .ascending,
            .descending,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .ascending: return "Ascending"
        case .descending: return "Descending"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = OrderKey(rawValue: rawValue) ?? OrderKey.sdkUnknown(rawValue)
    }
}