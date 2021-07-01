// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ImageFormat {
    case json
    case jsondetached
    case jsonembedded
    case sdkUnknown(String)
}

extension ImageFormat : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ImageFormat] {
        return [
            .json,
            .jsondetached,
            .jsonembedded,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .json: return "JSON"
        case .jsondetached: return "JSONDetached"
        case .jsonembedded: return "JSONEmbedded"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ImageFormat(rawValue: rawValue) ?? ImageFormat.sdkUnknown(rawValue)
    }
}