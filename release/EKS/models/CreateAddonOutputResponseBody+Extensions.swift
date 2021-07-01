// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateAddonOutputResponseBody: Equatable {
    public let addon: Addon?
}

extension CreateAddonOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case addon
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let addonDecoded = try containerValues.decodeIfPresent(Addon.self, forKey: .addon)
        addon = addonDecoded
    }
}