// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum AppInstanceDataType {
    case channel
    case channelmessage
    case sdkUnknown(String)
}

extension AppInstanceDataType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [AppInstanceDataType] {
        return [
            .channel,
            .channelmessage,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .channel: return "Channel"
        case .channelmessage: return "ChannelMessage"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = AppInstanceDataType(rawValue: rawValue) ?? AppInstanceDataType.sdkUnknown(rawValue)
    }
}