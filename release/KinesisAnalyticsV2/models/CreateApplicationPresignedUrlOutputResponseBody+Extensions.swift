// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateApplicationPresignedUrlOutputResponseBody: Equatable {
    public let authorizedUrl: String?
}

extension CreateApplicationPresignedUrlOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case authorizedUrl = "AuthorizedUrl"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let authorizedUrlDecoded = try containerValues.decodeIfPresent(String.self, forKey: .authorizedUrl)
        authorizedUrl = authorizedUrlDecoded
    }
}