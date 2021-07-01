// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ClientVpnEndpointAttributeStatusCode {
    case applied
    case applying
    case sdkUnknown(String)
}

extension ClientVpnEndpointAttributeStatusCode : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ClientVpnEndpointAttributeStatusCode] {
        return [
            .applied,
            .applying,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .applied: return "applied"
        case .applying: return "applying"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ClientVpnEndpointAttributeStatusCode(rawValue: rawValue) ?? ClientVpnEndpointAttributeStatusCode.sdkUnknown(rawValue)
    }
}