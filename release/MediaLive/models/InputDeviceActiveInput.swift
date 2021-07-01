// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// The source at the input device that is currently active.
public enum InputDeviceActiveInput {
    case hdmi
    case sdi
    case sdkUnknown(String)
}

extension InputDeviceActiveInput : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [InputDeviceActiveInput] {
        return [
            .hdmi,
            .sdi,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .hdmi: return "HDMI"
        case .sdi: return "SDI"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = InputDeviceActiveInput(rawValue: rawValue) ?? InputDeviceActiveInput.sdkUnknown(rawValue)
    }
}