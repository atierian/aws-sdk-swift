// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ServiceUpdateType {
    case securityUpdate
    case sdkUnknown(String)
}

extension ServiceUpdateType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ServiceUpdateType] {
        return [
            .securityUpdate,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .securityUpdate: return "security-update"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ServiceUpdateType(rawValue: rawValue) ?? ServiceUpdateType.sdkUnknown(rawValue)
    }
}