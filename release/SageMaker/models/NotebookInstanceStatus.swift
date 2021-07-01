// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum NotebookInstanceStatus {
    case deleting
    case failed
    case inservice
    case pending
    case stopped
    case stopping
    case updating
    case sdkUnknown(String)
}

extension NotebookInstanceStatus : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [NotebookInstanceStatus] {
        return [
            .deleting,
            .failed,
            .inservice,
            .pending,
            .stopped,
            .stopping,
            .updating,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .deleting: return "Deleting"
        case .failed: return "Failed"
        case .inservice: return "InService"
        case .pending: return "Pending"
        case .stopped: return "Stopped"
        case .stopping: return "Stopping"
        case .updating: return "Updating"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = NotebookInstanceStatus(rawValue: rawValue) ?? NotebookInstanceStatus.sdkUnknown(rawValue)
    }
}