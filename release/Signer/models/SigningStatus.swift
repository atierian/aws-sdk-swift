// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum SigningStatus {
    case failed
    case inprogress
    case succeeded
    case sdkUnknown(String)
}

extension SigningStatus : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [SigningStatus] {
        return [
            .failed,
            .inprogress,
            .succeeded,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .failed: return "Failed"
        case .inprogress: return "InProgress"
        case .succeeded: return "Succeeded"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = SigningStatus(rawValue: rawValue) ?? SigningStatus.sdkUnknown(rawValue)
    }
}