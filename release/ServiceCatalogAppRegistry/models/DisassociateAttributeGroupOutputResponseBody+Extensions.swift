// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DisassociateAttributeGroupOutputResponseBody: Equatable {
    public let applicationArn: String?
    public let attributeGroupArn: String?
}

extension DisassociateAttributeGroupOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case applicationArn
        case attributeGroupArn
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let applicationArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .applicationArn)
        applicationArn = applicationArnDecoded
        let attributeGroupArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .attributeGroupArn)
        attributeGroupArn = attributeGroupArnDecoded
    }
}