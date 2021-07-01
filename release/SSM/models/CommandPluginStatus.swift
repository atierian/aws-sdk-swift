// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum CommandPluginStatus {
    case cancelled
    case failed
    case inProgress
    case pending
    case success
    case timedOut
    case sdkUnknown(String)
}

extension CommandPluginStatus : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [CommandPluginStatus] {
        return [
            .cancelled,
            .failed,
            .inProgress,
            .pending,
            .success,
            .timedOut,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .cancelled: return "Cancelled"
        case .failed: return "Failed"
        case .inProgress: return "InProgress"
        case .pending: return "Pending"
        case .success: return "Success"
        case .timedOut: return "TimedOut"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = CommandPluginStatus(rawValue: rawValue) ?? CommandPluginStatus.sdkUnknown(rawValue)
    }
}