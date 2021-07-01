// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum Partition {
    case aws
    case awsCn
    case awsUsGov
    case sdkUnknown(String)
}

extension Partition : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [Partition] {
        return [
            .aws,
            .awsCn,
            .awsUsGov,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .aws: return "aws"
        case .awsCn: return "aws-cn"
        case .awsUsGov: return "aws-us-gov"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = Partition(rawValue: rawValue) ?? Partition.sdkUnknown(rawValue)
    }
}