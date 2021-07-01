// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum BucketLogsPermission {
    case fullControl
    case read
    case write
    case sdkUnknown(String)
}

extension BucketLogsPermission : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [BucketLogsPermission] {
        return [
            .fullControl,
            .read,
            .write,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .fullControl: return "FULL_CONTROL"
        case .read: return "READ"
        case .write: return "WRITE"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = BucketLogsPermission(rawValue: rawValue) ?? BucketLogsPermission.sdkUnknown(rawValue)
    }
}