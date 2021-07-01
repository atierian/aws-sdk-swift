// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ScanBy {
    case timestampAscending
    case timestampDescending
    case sdkUnknown(String)
}

extension ScanBy : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ScanBy] {
        return [
            .timestampAscending,
            .timestampDescending,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .timestampAscending: return "TimestampAscending"
        case .timestampDescending: return "TimestampDescending"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ScanBy(rawValue: rawValue) ?? ScanBy.sdkUnknown(rawValue)
    }
}