// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Supports HbbTV specification as indicated
public enum DashIsoHbbtvCompliance {
    case hbbtv15
    case `none`
    case sdkUnknown(String)
}

extension DashIsoHbbtvCompliance : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [DashIsoHbbtvCompliance] {
        return [
            .hbbtv15,
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
        case .hbbtv15: return "HBBTV_1_5"
        case .none: return "NONE"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = DashIsoHbbtvCompliance(rawValue: rawValue) ?? DashIsoHbbtvCompliance.sdkUnknown(rawValue)
    }
}