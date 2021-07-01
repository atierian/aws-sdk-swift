// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum SortKeyType {
    case lastAuthenticatedTimeAscending
    case lastAuthenticatedTimeDescending
    case serviceNamespaceAscending
    case serviceNamespaceDescending
    case sdkUnknown(String)
}

extension SortKeyType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [SortKeyType] {
        return [
            .lastAuthenticatedTimeAscending,
            .lastAuthenticatedTimeDescending,
            .serviceNamespaceAscending,
            .serviceNamespaceDescending,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .lastAuthenticatedTimeAscending: return "LAST_AUTHENTICATED_TIME_ASCENDING"
        case .lastAuthenticatedTimeDescending: return "LAST_AUTHENTICATED_TIME_DESCENDING"
        case .serviceNamespaceAscending: return "SERVICE_NAMESPACE_ASCENDING"
        case .serviceNamespaceDescending: return "SERVICE_NAMESPACE_DESCENDING"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = SortKeyType(rawValue: rawValue) ?? SortKeyType.sdkUnknown(rawValue)
    }
}