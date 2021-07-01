// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum CACertificateStatus {
    case active
    case inactive
    case sdkUnknown(String)
}

extension CACertificateStatus : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [CACertificateStatus] {
        return [
            .active,
            .inactive,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .active: return "ACTIVE"
        case .inactive: return "INACTIVE"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = CACertificateStatus(rawValue: rawValue) ?? CACertificateStatus.sdkUnknown(rawValue)
    }
}