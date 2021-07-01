// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ProductViewFilterBy {
    case fulltextsearch
    case owner
    case producttype
    case sourceproductid
    case sdkUnknown(String)
}

extension ProductViewFilterBy : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ProductViewFilterBy] {
        return [
            .fulltextsearch,
            .owner,
            .producttype,
            .sourceproductid,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .fulltextsearch: return "FullTextSearch"
        case .owner: return "Owner"
        case .producttype: return "ProductType"
        case .sourceproductid: return "SourceProductId"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ProductViewFilterBy(rawValue: rawValue) ?? ProductViewFilterBy.sdkUnknown(rawValue)
    }
}