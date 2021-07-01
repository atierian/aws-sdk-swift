// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct StartDeviceAuthorizationInputBody: Equatable {
    public let clientId: String?
    public let clientSecret: String?
    public let startUrl: String?
}

extension StartDeviceAuthorizationInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case clientId
        case clientSecret
        case startUrl
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let clientIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .clientId)
        clientId = clientIdDecoded
        let clientSecretDecoded = try containerValues.decodeIfPresent(String.self, forKey: .clientSecret)
        clientSecret = clientSecretDecoded
        let startUrlDecoded = try containerValues.decodeIfPresent(String.self, forKey: .startUrl)
        startUrl = startUrlDecoded
    }
}