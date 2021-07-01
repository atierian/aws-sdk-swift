// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DisassociateWebACLInputBody: Equatable {
    public let resourceArn: String?
}

extension DisassociateWebACLInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case resourceArn = "ResourceArn"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let resourceArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .resourceArn)
        resourceArn = resourceArnDecoded
    }
}