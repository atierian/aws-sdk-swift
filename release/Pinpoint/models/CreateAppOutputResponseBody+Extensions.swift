// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateAppOutputResponseBody: Equatable {
    public let applicationResponse: ApplicationResponse?
}

extension CreateAppOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case applicationResponse = "ApplicationResponse"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let applicationResponseDecoded = try containerValues.decodeIfPresent(ApplicationResponse.self, forKey: .applicationResponse)
        applicationResponse = applicationResponseDecoded
    }
}