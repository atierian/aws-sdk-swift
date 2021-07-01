// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ResourceAttribute {
    case creationpolicy
    case deletionpolicy
    case metadata
    case properties
    case tags
    case updatepolicy
    case sdkUnknown(String)
}

extension ResourceAttribute : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ResourceAttribute] {
        return [
            .creationpolicy,
            .deletionpolicy,
            .metadata,
            .properties,
            .tags,
            .updatepolicy,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .creationpolicy: return "CreationPolicy"
        case .deletionpolicy: return "DeletionPolicy"
        case .metadata: return "Metadata"
        case .properties: return "Properties"
        case .tags: return "Tags"
        case .updatepolicy: return "UpdatePolicy"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ResourceAttribute(rawValue: rawValue) ?? ResourceAttribute.sdkUnknown(rawValue)
    }
}