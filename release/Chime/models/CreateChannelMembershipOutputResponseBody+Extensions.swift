// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateChannelMembershipOutputResponseBody: Equatable {
    public let channelArn: String?
    public let member: Identity?
}

extension CreateChannelMembershipOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case channelArn = "ChannelArn"
        case member = "Member"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let channelArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .channelArn)
        channelArn = channelArnDecoded
        let memberDecoded = try containerValues.decodeIfPresent(Identity.self, forKey: .member)
        member = memberDecoded
    }
}