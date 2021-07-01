// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteAdmChannelOutputResponseBody: Equatable {
    public let aDMChannelResponse: ADMChannelResponse?
}

extension DeleteAdmChannelOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case aDMChannelResponse = "ADMChannelResponse"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let aDMChannelResponseDecoded = try containerValues.decodeIfPresent(ADMChannelResponse.self, forKey: .aDMChannelResponse)
        aDMChannelResponse = aDMChannelResponseDecoded
    }
}