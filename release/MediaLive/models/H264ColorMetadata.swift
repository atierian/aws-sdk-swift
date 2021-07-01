// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// H264 Color Metadata
public enum H264ColorMetadata {
    case ignore
    case insert
    case sdkUnknown(String)
}

extension H264ColorMetadata : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [H264ColorMetadata] {
        return [
            .ignore,
            .insert,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .ignore: return "IGNORE"
        case .insert: return "INSERT"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = H264ColorMetadata(rawValue: rawValue) ?? H264ColorMetadata.sdkUnknown(rawValue)
    }
}