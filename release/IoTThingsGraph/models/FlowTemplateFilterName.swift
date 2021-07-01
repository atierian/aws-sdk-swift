// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum FlowTemplateFilterName {
    case deviceModelId
    case sdkUnknown(String)
}

extension FlowTemplateFilterName : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [FlowTemplateFilterName] {
        return [
            .deviceModelId,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .deviceModelId: return "DEVICE_MODEL_ID"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = FlowTemplateFilterName(rawValue: rawValue) ?? FlowTemplateFilterName.sdkUnknown(rawValue)
    }
}