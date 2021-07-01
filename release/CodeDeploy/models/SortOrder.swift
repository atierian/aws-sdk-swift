// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum SortOrder {
    case ascending
    case descending
    case sdkUnknown(String)
}

extension SortOrder : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [SortOrder] {
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
        case .ascending: return "ascending"
        case .descending: return "descending"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = SortOrder(rawValue: rawValue) ?? SortOrder.sdkUnknown(rawValue)
    }
}