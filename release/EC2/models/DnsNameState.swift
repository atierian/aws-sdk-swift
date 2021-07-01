// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum DnsNameState {
    case failed
    case pendingverification
    case verified
    case sdkUnknown(String)
}

extension DnsNameState : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [DnsNameState] {
        return [
            .failed,
            .pendingverification,
            .verified,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .failed: return "failed"
        case .pendingverification: return "pendingVerification"
        case .verified: return "verified"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = DnsNameState(rawValue: rawValue) ?? DnsNameState.sdkUnknown(rawValue)
    }
}