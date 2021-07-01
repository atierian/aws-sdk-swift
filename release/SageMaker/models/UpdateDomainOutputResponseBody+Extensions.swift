// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateDomainOutputResponseBody: Equatable {
    public let domainArn: String?
}

extension UpdateDomainOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case domainArn = "DomainArn"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let domainArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .domainArn)
        domainArn = domainArnDecoded
    }
}