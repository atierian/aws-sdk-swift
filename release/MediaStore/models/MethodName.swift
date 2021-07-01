// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum MethodName {
    case delete
    case `get`
    case head
    case put
    case sdkUnknown(String)
}

extension MethodName : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [MethodName] {
        return [
            .delete,
            .get,
            .head,
            .put,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .delete: return "DELETE"
        case .get: return "GET"
        case .head: return "HEAD"
        case .put: return "PUT"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = MethodName(rawValue: rawValue) ?? MethodName.sdkUnknown(rawValue)
    }
}