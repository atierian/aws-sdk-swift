// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum CostCategoryInheritedValueDimensionName {
    case linkedAccountName
    case tag
    case sdkUnknown(String)
}

extension CostCategoryInheritedValueDimensionName : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [CostCategoryInheritedValueDimensionName] {
        return [
            .linkedAccountName,
            .tag,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .linkedAccountName: return "LINKED_ACCOUNT_NAME"
        case .tag: return "TAG"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = CostCategoryInheritedValueDimensionName(rawValue: rawValue) ?? CostCategoryInheritedValueDimensionName.sdkUnknown(rawValue)
    }
}