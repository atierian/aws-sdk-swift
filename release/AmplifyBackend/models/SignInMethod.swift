// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum SignInMethod {
    case email
    case emailAndPhoneNumber
    case phoneNumber
    case username
    case sdkUnknown(String)
}

extension SignInMethod : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [SignInMethod] {
        return [
            .email,
            .emailAndPhoneNumber,
            .phoneNumber,
            .username,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .email: return "EMAIL"
        case .emailAndPhoneNumber: return "EMAIL_AND_PHONE_NUMBER"
        case .phoneNumber: return "PHONE_NUMBER"
        case .username: return "USERNAME"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = SignInMethod(rawValue: rawValue) ?? SignInMethod.sdkUnknown(rawValue)
    }
}