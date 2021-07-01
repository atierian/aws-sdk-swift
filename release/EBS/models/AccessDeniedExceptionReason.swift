// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum AccessDeniedExceptionReason {
    case dependencyAccessDenied
    case unauthorizedAccount
    case sdkUnknown(String)
}

extension AccessDeniedExceptionReason : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [AccessDeniedExceptionReason] {
        return [
            .dependencyAccessDenied,
            .unauthorizedAccount,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .dependencyAccessDenied: return "DEPENDENCY_ACCESS_DENIED"
        case .unauthorizedAccount: return "UNAUTHORIZED_ACCOUNT"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = AccessDeniedExceptionReason(rawValue: rawValue) ?? AccessDeniedExceptionReason.sdkUnknown(rawValue)
    }
}