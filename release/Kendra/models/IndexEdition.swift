// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum IndexEdition {
    case developerEdition
    case enterpriseEdition
    case sdkUnknown(String)
}

extension IndexEdition : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [IndexEdition] {
        return [
            .developerEdition,
            .enterpriseEdition,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .developerEdition: return "DEVELOPER_EDITION"
        case .enterpriseEdition: return "ENTERPRISE_EDITION"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = IndexEdition(rawValue: rawValue) ?? IndexEdition.sdkUnknown(rawValue)
    }
}