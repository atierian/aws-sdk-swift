// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum ProviderType {
    case bitbucket
    case codeCommit
    case gitHub
    case gitHubEnterpriseServer
    case sdkUnknown(String)
}

extension ProviderType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [ProviderType] {
        return [
            .bitbucket,
            .codeCommit,
            .gitHub,
            .gitHubEnterpriseServer,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .bitbucket: return "Bitbucket"
        case .codeCommit: return "CodeCommit"
        case .gitHub: return "GitHub"
        case .gitHubEnterpriseServer: return "GitHubEnterpriseServer"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = ProviderType(rawValue: rawValue) ?? ProviderType.sdkUnknown(rawValue)
    }
}