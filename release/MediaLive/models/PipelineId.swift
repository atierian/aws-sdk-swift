// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Pipeline ID
public enum PipelineId {
    case pipeline0
    case pipeline1
    case sdkUnknown(String)
}

extension PipelineId : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [PipelineId] {
        return [
            .pipeline0,
            .pipeline1,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .pipeline0: return "PIPELINE_0"
        case .pipeline1: return "PIPELINE_1"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = PipelineId(rawValue: rawValue) ?? PipelineId.sdkUnknown(rawValue)
    }
}