// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ProvisionedConcurrencyStatusEnum {
    case failed
    case inProgress
    case ready
    case sdkUnknown(String)
}

extension ProvisionedConcurrencyStatusEnum : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ProvisionedConcurrencyStatusEnum] {
        return [
            .failed,
            .inProgress,
            .ready,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .failed: return "FAILED"
        case .inProgress: return "IN_PROGRESS"
        case .ready: return "READY"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ProvisionedConcurrencyStatusEnum(rawValue: rawValue) ?? ProvisionedConcurrencyStatusEnum.sdkUnknown(rawValue)
    }
}