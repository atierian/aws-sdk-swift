// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum StorageClass {
    case cold
    case deleted
    case warm
    case sdkUnknown(String)
}

extension StorageClass : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [StorageClass] {
        return [
            .cold,
            .deleted,
            .warm,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .cold: return "COLD"
        case .deleted: return "DELETED"
        case .warm: return "WARM"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = StorageClass(rawValue: rawValue) ?? StorageClass.sdkUnknown(rawValue)
    }
}