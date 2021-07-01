// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum FileSystemType {
    case efs
    case sdkUnknown(String)
}

extension FileSystemType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [FileSystemType] {
        return [
            .efs,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .efs: return "EFS"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = FileSystemType(rawValue: rawValue) ?? FileSystemType.sdkUnknown(rawValue)
    }
}