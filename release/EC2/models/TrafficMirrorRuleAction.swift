// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum TrafficMirrorRuleAction {
    case accept
    case reject
    case sdkUnknown(String)
}

extension TrafficMirrorRuleAction : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [TrafficMirrorRuleAction] {
        return [
            .accept,
            .reject,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .accept: return "accept"
        case .reject: return "reject"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = TrafficMirrorRuleAction(rawValue: rawValue) ?? TrafficMirrorRuleAction.sdkUnknown(rawValue)
    }
}