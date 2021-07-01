// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteNamespaceOutputResponseBody: Equatable {
    public let namespaceArn: String?
    public let namespaceName: String?
}

extension DeleteNamespaceOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case namespaceArn
        case namespaceName
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let namespaceArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .namespaceArn)
        namespaceArn = namespaceArnDecoded
        let namespaceNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .namespaceName)
        namespaceName = namespaceNameDecoded
    }
}