// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetApplicationInputBody: Equatable {
    public let applicationName: String?
}

extension GetApplicationInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case applicationName
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let applicationNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .applicationName)
        applicationName = applicationNameDecoded
    }
}