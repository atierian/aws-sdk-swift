// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ConformancePackState {
    case createComplete
    case createFailed
    case createInProgress
    case deleteFailed
    case deleteInProgress
    case sdkUnknown(String)
}

extension ConformancePackState : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ConformancePackState] {
        return [
            .createComplete,
            .createFailed,
            .createInProgress,
            .deleteFailed,
            .deleteInProgress,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .createComplete: return "CREATE_COMPLETE"
        case .createFailed: return "CREATE_FAILED"
        case .createInProgress: return "CREATE_IN_PROGRESS"
        case .deleteFailed: return "DELETE_FAILED"
        case .deleteInProgress: return "DELETE_IN_PROGRESS"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ConformancePackState(rawValue: rawValue) ?? ConformancePackState.sdkUnknown(rawValue)
    }
}