// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum HealthCheckType {
    case http
    case https
    case tcp
    case sdkUnknown(String)
}

extension HealthCheckType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [HealthCheckType] {
        return [
            .http,
            .https,
            .tcp,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .http: return "HTTP"
        case .https: return "HTTPS"
        case .tcp: return "TCP"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = HealthCheckType(rawValue: rawValue) ?? HealthCheckType.sdkUnknown(rawValue)
    }
}