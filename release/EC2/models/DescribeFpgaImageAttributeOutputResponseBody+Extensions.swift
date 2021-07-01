// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeFpgaImageAttributeOutputResponseBody: Equatable {
    public let fpgaImageAttribute: FpgaImageAttribute?
}

extension DescribeFpgaImageAttributeOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case fpgaImageAttribute = "fpgaImageAttribute"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let fpgaImageAttributeDecoded = try containerValues.decodeIfPresent(FpgaImageAttribute.self, forKey: .fpgaImageAttribute)
        fpgaImageAttribute = fpgaImageAttributeDecoded
    }
}