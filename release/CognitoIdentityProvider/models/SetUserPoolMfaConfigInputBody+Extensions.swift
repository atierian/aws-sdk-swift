// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct SetUserPoolMfaConfigInputBody: Equatable {
    public let userPoolId: String?
    public let smsMfaConfiguration: SmsMfaConfigType?
    public let softwareTokenMfaConfiguration: SoftwareTokenMfaConfigType?
    public let mfaConfiguration: UserPoolMfaType?
}

extension SetUserPoolMfaConfigInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case mfaConfiguration = "MfaConfiguration"
        case smsMfaConfiguration = "SmsMfaConfiguration"
        case softwareTokenMfaConfiguration = "SoftwareTokenMfaConfiguration"
        case userPoolId = "UserPoolId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let userPoolIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .userPoolId)
        userPoolId = userPoolIdDecoded
        let smsMfaConfigurationDecoded = try containerValues.decodeIfPresent(SmsMfaConfigType.self, forKey: .smsMfaConfiguration)
        smsMfaConfiguration = smsMfaConfigurationDecoded
        let softwareTokenMfaConfigurationDecoded = try containerValues.decodeIfPresent(SoftwareTokenMfaConfigType.self, forKey: .softwareTokenMfaConfiguration)
        softwareTokenMfaConfiguration = softwareTokenMfaConfigurationDecoded
        let mfaConfigurationDecoded = try containerValues.decodeIfPresent(UserPoolMfaType.self, forKey: .mfaConfiguration)
        mfaConfiguration = mfaConfigurationDecoded
    }
}