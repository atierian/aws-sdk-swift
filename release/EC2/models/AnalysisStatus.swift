// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum AnalysisStatus {
    case failed
    case running
    case succeeded
    case sdkUnknown(String)
}

extension AnalysisStatus : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [AnalysisStatus] {
        return [
            .failed,
            .running,
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
        case .failed: return "failed"
        case .running: return "running"
        case .succeeded: return "succeeded"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = AnalysisStatus(rawValue: rawValue) ?? AnalysisStatus.sdkUnknown(rawValue)
    }
}