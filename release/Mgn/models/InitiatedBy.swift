// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum InitiatedBy {
    case diagnostic
    case startCutover
    case startTest
    case terminate
    case sdkUnknown(String)
}

extension InitiatedBy : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [InitiatedBy] {
        return [
            .diagnostic,
            .startCutover,
            .startTest,
            .terminate,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .diagnostic: return "DIAGNOSTIC"
        case .startCutover: return "START_CUTOVER"
        case .startTest: return "START_TEST"
        case .terminate: return "TERMINATE"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = InitiatedBy(rawValue: rawValue) ?? InitiatedBy.sdkUnknown(rawValue)
    }
}