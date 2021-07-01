// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateRoomMembershipOutputResponseBody: Equatable {
    public let roomMembership: RoomMembership?
}

extension CreateRoomMembershipOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case roomMembership = "RoomMembership"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let roomMembershipDecoded = try containerValues.decodeIfPresent(RoomMembership.self, forKey: .roomMembership)
        roomMembership = roomMembershipDecoded
    }
}