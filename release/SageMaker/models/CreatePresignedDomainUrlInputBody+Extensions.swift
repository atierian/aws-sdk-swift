// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreatePresignedDomainUrlInputBody: Equatable {
    public let domainId: String?
    public let userProfileName: String?
    public let sessionExpirationDurationInSeconds: Int?
    public let expiresInSeconds: Int?
}

extension CreatePresignedDomainUrlInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case domainId = "DomainId"
        case expiresInSeconds = "ExpiresInSeconds"
        case sessionExpirationDurationInSeconds = "SessionExpirationDurationInSeconds"
        case userProfileName = "UserProfileName"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let domainIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .domainId)
        domainId = domainIdDecoded
        let userProfileNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .userProfileName)
        userProfileName = userProfileNameDecoded
        let sessionExpirationDurationInSecondsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .sessionExpirationDurationInSeconds)
        sessionExpirationDurationInSeconds = sessionExpirationDurationInSecondsDecoded
        let expiresInSecondsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .expiresInSeconds)
        expiresInSeconds = expiresInSecondsDecoded
    }
}