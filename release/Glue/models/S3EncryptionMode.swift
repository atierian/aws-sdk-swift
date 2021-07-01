// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum S3EncryptionMode {
    case disabled
    case ssekms
    case sses3
    case sdkUnknown(String)
}

extension S3EncryptionMode : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [S3EncryptionMode] {
        return [
            .disabled,
            .ssekms,
            .sses3,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .disabled: return "DISABLED"
        case .ssekms: return "SSE-KMS"
        case .sses3: return "SSE-S3"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = S3EncryptionMode(rawValue: rawValue) ?? S3EncryptionMode.sdkUnknown(rawValue)
    }
}