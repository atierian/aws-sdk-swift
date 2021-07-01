// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum DeviceType {
    case qpu
    case simulator
    case sdkUnknown(String)
}

extension DeviceType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [DeviceType] {
        return [
            .qpu,
            .simulator,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .qpu: return "QPU"
        case .simulator: return "SIMULATOR"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = DeviceType(rawValue: rawValue) ?? DeviceType.sdkUnknown(rawValue)
    }
}