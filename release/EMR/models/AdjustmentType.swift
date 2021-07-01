// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum AdjustmentType {
    case changeInCapacity
    case exactCapacity
    case percentChangeInCapacity
    case sdkUnknown(String)
}

extension AdjustmentType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [AdjustmentType] {
        return [
            .changeInCapacity,
            .exactCapacity,
            .percentChangeInCapacity,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .changeInCapacity: return "CHANGE_IN_CAPACITY"
        case .exactCapacity: return "EXACT_CAPACITY"
        case .percentChangeInCapacity: return "PERCENT_CHANGE_IN_CAPACITY"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = AdjustmentType(rawValue: rawValue) ?? AdjustmentType.sdkUnknown(rawValue)
    }
}