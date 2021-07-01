// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum HealthStatusFilter {
    case all
    case healthy
    case healthyOrElseAll
    case unhealthy
    case sdkUnknown(String)
}

extension HealthStatusFilter : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [HealthStatusFilter] {
        return [
            .all,
            .healthy,
            .healthyOrElseAll,
            .unhealthy,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .all: return "ALL"
        case .healthy: return "HEALTHY"
        case .healthyOrElseAll: return "HEALTHY_OR_ELSE_ALL"
        case .unhealthy: return "UNHEALTHY"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = HealthStatusFilter(rawValue: rawValue) ?? HealthStatusFilter.sdkUnknown(rawValue)
    }
}