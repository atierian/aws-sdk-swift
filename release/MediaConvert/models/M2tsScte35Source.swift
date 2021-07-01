// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// For SCTE-35 markers from your input-- Choose Passthrough (PASSTHROUGH) if you want SCTE-35 markers that appear in your input to also appear in this output. Choose None (NONE) if you don't want SCTE-35 markers in this output. For SCTE-35 markers from an ESAM XML document-- Choose None (NONE). Also provide the ESAM XML as a string in the setting Signal processing notification XML (sccXml). Also enable ESAM SCTE-35 (include the property scte35Esam).
public enum M2tsScte35Source {
    case `none`
    case passthrough
    case sdkUnknown(String)
}

extension M2tsScte35Source : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [M2tsScte35Source] {
        return [
            .none,
            .passthrough,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .none: return "NONE"
        case .passthrough: return "PASSTHROUGH"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = M2tsScte35Source(rawValue: rawValue) ?? M2tsScte35Source.sdkUnknown(rawValue)
    }
}