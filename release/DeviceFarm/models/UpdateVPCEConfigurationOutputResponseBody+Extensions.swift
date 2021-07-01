// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateVPCEConfigurationOutputResponseBody: Equatable {
    public let vpceConfiguration: VPCEConfiguration?
}

extension UpdateVPCEConfigurationOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case vpceConfiguration
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let vpceConfigurationDecoded = try containerValues.decodeIfPresent(VPCEConfiguration.self, forKey: .vpceConfiguration)
        vpceConfiguration = vpceConfigurationDecoded
    }
}