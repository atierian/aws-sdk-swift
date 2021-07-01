// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum LoadBalancerTlsCertificateFailureReason {
    case additionalverificationrequired
    case domainnotallowed
    case invalidpublicdomain
    case noavailablecontacts
    case other
    case sdkUnknown(String)
}

extension LoadBalancerTlsCertificateFailureReason : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [LoadBalancerTlsCertificateFailureReason] {
        return [
            .additionalverificationrequired,
            .domainnotallowed,
            .invalidpublicdomain,
            .noavailablecontacts,
            .other,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .additionalverificationrequired: return "ADDITIONAL_VERIFICATION_REQUIRED"
        case .domainnotallowed: return "DOMAIN_NOT_ALLOWED"
        case .invalidpublicdomain: return "INVALID_PUBLIC_DOMAIN"
        case .noavailablecontacts: return "NO_AVAILABLE_CONTACTS"
        case .other: return "OTHER"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = LoadBalancerTlsCertificateFailureReason(rawValue: rawValue) ?? LoadBalancerTlsCertificateFailureReason.sdkUnknown(rawValue)
    }
}