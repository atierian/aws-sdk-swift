// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum VolumeAttachmentState {
    case attached
    case attaching
    case busy
    case detached
    case detaching
    case sdkUnknown(String)
}

extension VolumeAttachmentState : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [VolumeAttachmentState] {
        return [
            .attached,
            .attaching,
            .busy,
            .detached,
            .detaching,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .attached: return "attached"
        case .attaching: return "attaching"
        case .busy: return "busy"
        case .detached: return "detached"
        case .detaching: return "detaching"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = VolumeAttachmentState(rawValue: rawValue) ?? VolumeAttachmentState.sdkUnknown(rawValue)
    }
}