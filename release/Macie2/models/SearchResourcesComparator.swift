// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The operator to use in a condition that filters the results of a query. Valid values are:</p>
public enum SearchResourcesComparator {
    case eq
    case ne
    case sdkUnknown(String)
}

extension SearchResourcesComparator : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [SearchResourcesComparator] {
        return [
            .eq,
            .ne,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .eq: return "EQ"
        case .ne: return "NE"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = SearchResourcesComparator(rawValue: rawValue) ?? SearchResourcesComparator.sdkUnknown(rawValue)
    }
}