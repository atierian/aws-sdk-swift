// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension BucketPublicAccess: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case effectivePermission = "effectivePermission"
        case permissionConfiguration = "permissionConfiguration"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let effectivePermission = effectivePermission {
            try encodeContainer.encode(effectivePermission.rawValue, forKey: .effectivePermission)
        }
        if let permissionConfiguration = permissionConfiguration {
            try encodeContainer.encode(permissionConfiguration, forKey: .permissionConfiguration)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let effectivePermissionDecoded = try containerValues.decodeIfPresent(EffectivePermission.self, forKey: .effectivePermission)
        effectivePermission = effectivePermissionDecoded
        let permissionConfigurationDecoded = try containerValues.decodeIfPresent(BucketPermissionConfiguration.self, forKey: .permissionConfiguration)
        permissionConfiguration = permissionConfigurationDecoded
    }
}