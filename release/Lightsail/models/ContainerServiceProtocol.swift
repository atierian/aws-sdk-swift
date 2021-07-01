// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ContainerServiceProtocol {
    case http
    case https
    case tcp
    case udp
    case sdkUnknown(String)
}

extension ContainerServiceProtocol : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ContainerServiceProtocol] {
        return [
            .http,
            .https,
            .tcp,
            .udp,
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
        case .udp: return "UDP"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ContainerServiceProtocol(rawValue: rawValue) ?? ContainerServiceProtocol.sdkUnknown(rawValue)
    }
}