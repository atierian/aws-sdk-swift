// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ListWorkteamsSortByOptions {
    case createdate
    case name
    case sdkUnknown(String)
}

extension ListWorkteamsSortByOptions : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ListWorkteamsSortByOptions] {
        return [
            .createdate,
            .name,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .createdate: return "CreateDate"
        case .name: return "Name"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ListWorkteamsSortByOptions(rawValue: rawValue) ?? ListWorkteamsSortByOptions.sdkUnknown(rawValue)
    }
}