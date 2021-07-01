// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum SelectionStatus {
    case notSelected
    case selected
    case sdkUnknown(String)
}

extension SelectionStatus : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [SelectionStatus] {
        return [
            .notSelected,
            .selected,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .notSelected: return "NOT_SELECTED"
        case .selected: return "SELECTED"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = SelectionStatus(rawValue: rawValue) ?? SelectionStatus.sdkUnknown(rawValue)
    }
}