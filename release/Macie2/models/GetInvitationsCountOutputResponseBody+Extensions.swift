// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetInvitationsCountOutputResponseBody: Equatable {
    public let invitationsCount: Int
}

extension GetInvitationsCountOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case invitationsCount = "invitationsCount"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let invitationsCountDecoded = try containerValues.decode(Int.self, forKey: .invitationsCount)
        invitationsCount = invitationsCountDecoded
    }
}