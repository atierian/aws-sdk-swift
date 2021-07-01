// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ResourceShareAssociationStatus {
    case associated
    case associating
    case disassociated
    case disassociating
    case failed
    case sdkUnknown(String)
}

extension ResourceShareAssociationStatus : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ResourceShareAssociationStatus] {
        return [
            .associated,
            .associating,
            .disassociated,
            .disassociating,
            .failed,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .associated: return "ASSOCIATED"
        case .associating: return "ASSOCIATING"
        case .disassociated: return "DISASSOCIATED"
        case .disassociating: return "DISASSOCIATING"
        case .failed: return "FAILED"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ResourceShareAssociationStatus(rawValue: rawValue) ?? ResourceShareAssociationStatus.sdkUnknown(rawValue)
    }
}