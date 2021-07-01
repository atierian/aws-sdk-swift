// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetConfigOutputResponseBody: Equatable {
    public let configType: String?
    public let configFile: String?
    public let configCred: String?
}

extension GetConfigOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case configCred = "ConfigCred"
        case configFile = "ConfigFile"
        case configType = "ConfigType"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let configTypeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .configType)
        configType = configTypeDecoded
        let configFileDecoded = try containerValues.decodeIfPresent(String.self, forKey: .configFile)
        configFile = configFileDecoded
        let configCredDecoded = try containerValues.decodeIfPresent(String.self, forKey: .configCred)
        configCred = configCredDecoded
    }
}