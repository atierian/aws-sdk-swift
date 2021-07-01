// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum AccessDeniedForDependencyExceptionReason {
    case accessDeniedDuringCreateServiceLinkedRole
    case sdkUnknown(String)
}

extension AccessDeniedForDependencyExceptionReason : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [AccessDeniedForDependencyExceptionReason] {
        return [
            .accessDeniedDuringCreateServiceLinkedRole,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .accessDeniedDuringCreateServiceLinkedRole: return "ACCESS_DENIED_DURING_CREATE_SERVICE_LINKED_ROLE"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = AccessDeniedForDependencyExceptionReason(rawValue: rawValue) ?? AccessDeniedForDependencyExceptionReason.sdkUnknown(rawValue)
    }
}