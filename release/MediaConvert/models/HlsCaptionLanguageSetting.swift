// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Applies only to 608 Embedded output captions. Insert: Include CLOSED-CAPTIONS lines in the manifest. Specify at least one language in the CC1 Language Code field. One CLOSED-CAPTION line is added for each Language Code you specify. Make sure to specify the languages in the order in which they appear in the original source (if the source is embedded format) or the order of the caption selectors (if the source is other than embedded). Otherwise, languages in the manifest will not match up properly with the output captions. None: Include CLOSED-CAPTIONS=NONE line in the manifest. Omit: Omit any CLOSED-CAPTIONS line from the manifest.
public enum HlsCaptionLanguageSetting {
    case insert
    case `none`
    case omit
    case sdkUnknown(String)
}

extension HlsCaptionLanguageSetting : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [HlsCaptionLanguageSetting] {
        return [
            .insert,
            .none,
            .omit,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .insert: return "INSERT"
        case .none: return "NONE"
        case .omit: return "OMIT"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = HlsCaptionLanguageSetting(rawValue: rawValue) ?? HlsCaptionLanguageSetting.sdkUnknown(rawValue)
    }
}