// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// When set to GZIP, compresses HLS playlist.
public enum CmafManifestCompression {
    case gzip
    case `none`
    case sdkUnknown(String)
}

extension CmafManifestCompression : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [CmafManifestCompression] {
        return [
            .gzip,
            .none,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .gzip: return "GZIP"
        case .none: return "NONE"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = CmafManifestCompression(rawValue: rawValue) ?? CmafManifestCompression.sdkUnknown(rawValue)
    }
}