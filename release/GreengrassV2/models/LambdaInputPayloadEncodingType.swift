// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum LambdaInputPayloadEncodingType {
    case binary
    case json
    case sdkUnknown(String)
}

extension LambdaInputPayloadEncodingType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [LambdaInputPayloadEncodingType] {
        return [
            .binary,
            .json,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .binary: return "binary"
        case .json: return "json"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = LambdaInputPayloadEncodingType(rawValue: rawValue) ?? LambdaInputPayloadEncodingType.sdkUnknown(rawValue)
    }
}