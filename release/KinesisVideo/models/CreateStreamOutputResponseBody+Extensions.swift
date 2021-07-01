// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateStreamOutputResponseBody: Equatable {
    public let streamARN: String?
}

extension CreateStreamOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case streamARN = "StreamARN"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let streamARNDecoded = try containerValues.decodeIfPresent(String.self, forKey: .streamARN)
        streamARN = streamARNDecoded
    }
}