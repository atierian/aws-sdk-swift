// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum UsageRecordResultStatus {
    case customerNotSubscribed
    case duplicateRecord
    case success
    case sdkUnknown(String)
}

extension UsageRecordResultStatus : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [UsageRecordResultStatus] {
        return [
            .customerNotSubscribed,
            .duplicateRecord,
            .success,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .customerNotSubscribed: return "CustomerNotSubscribed"
        case .duplicateRecord: return "DuplicateRecord"
        case .success: return "Success"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = UsageRecordResultStatus(rawValue: rawValue) ?? UsageRecordResultStatus.sdkUnknown(rawValue)
    }
}