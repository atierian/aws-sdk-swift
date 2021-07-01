// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum JQStatus {
    case creating
    case deleted
    case deleting
    case invalid
    case updating
    case valid
    case sdkUnknown(String)
}

extension JQStatus : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [JQStatus] {
        return [
            .creating,
            .deleted,
            .deleting,
            .invalid,
            .updating,
            .valid,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .creating: return "CREATING"
        case .deleted: return "DELETED"
        case .deleting: return "DELETING"
        case .invalid: return "INVALID"
        case .updating: return "UPDATING"
        case .valid: return "VALID"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = JQStatus(rawValue: rawValue) ?? JQStatus.sdkUnknown(rawValue)
    }
}