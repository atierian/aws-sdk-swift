// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum Criticality {
    case preferred
    case removed
    case `required`
    case sdkUnknown(String)
}

extension Criticality : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [Criticality] {
        return [
            .preferred,
            .removed,
            .required,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .preferred: return "PREFERRED"
        case .removed: return "REMOVED"
        case .required: return "REQUIRED"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = Criticality(rawValue: rawValue) ?? Criticality.sdkUnknown(rawValue)
    }
}