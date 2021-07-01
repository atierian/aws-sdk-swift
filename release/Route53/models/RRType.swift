// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum RRType {
    case a
    case aaaa
    case caa
    case cname
    case ds
    case mx
    case naptr
    case ns
    case ptr
    case soa
    case spf
    case srv
    case txt
    case sdkUnknown(String)
}

extension RRType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [RRType] {
        return [
            .a,
            .aaaa,
            .caa,
            .cname,
            .ds,
            .mx,
            .naptr,
            .ns,
            .ptr,
            .soa,
            .spf,
            .srv,
            .txt,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .a: return "A"
        case .aaaa: return "AAAA"
        case .caa: return "CAA"
        case .cname: return "CNAME"
        case .ds: return "DS"
        case .mx: return "MX"
        case .naptr: return "NAPTR"
        case .ns: return "NS"
        case .ptr: return "PTR"
        case .soa: return "SOA"
        case .spf: return "SPF"
        case .srv: return "SRV"
        case .txt: return "TXT"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = RRType(rawValue: rawValue) ?? RRType.sdkUnknown(rawValue)
    }
}