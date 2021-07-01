// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum LDAPSType {
    case client
    case sdkUnknown(String)
}

extension LDAPSType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [LDAPSType] {
        return [
            .client,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .client: return "Client"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = LDAPSType(rawValue: rawValue) ?? LDAPSType.sdkUnknown(rawValue)
    }
}