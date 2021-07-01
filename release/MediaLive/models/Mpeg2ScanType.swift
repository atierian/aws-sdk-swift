// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Mpeg2 Scan Type
public enum Mpeg2ScanType {
    case interlaced
    case progressive
    case sdkUnknown(String)
}

extension Mpeg2ScanType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [Mpeg2ScanType] {
        return [
            .interlaced,
            .progressive,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .interlaced: return "INTERLACED"
        case .progressive: return "PROGRESSIVE"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = Mpeg2ScanType(rawValue: rawValue) ?? Mpeg2ScanType.sdkUnknown(rawValue)
    }
}