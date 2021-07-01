// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeIdentityProviderConfigurationOutputResponseBody: Equatable {
    public let identityProviderType: IdentityProviderType?
    public let serviceProviderSamlMetadata: String?
    public let identityProviderSamlMetadata: String?
}

extension DescribeIdentityProviderConfigurationOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case identityProviderSamlMetadata = "IdentityProviderSamlMetadata"
        case identityProviderType = "IdentityProviderType"
        case serviceProviderSamlMetadata = "ServiceProviderSamlMetadata"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let identityProviderTypeDecoded = try containerValues.decodeIfPresent(IdentityProviderType.self, forKey: .identityProviderType)
        identityProviderType = identityProviderTypeDecoded
        let serviceProviderSamlMetadataDecoded = try containerValues.decodeIfPresent(String.self, forKey: .serviceProviderSamlMetadata)
        serviceProviderSamlMetadata = serviceProviderSamlMetadataDecoded
        let identityProviderSamlMetadataDecoded = try containerValues.decodeIfPresent(String.self, forKey: .identityProviderSamlMetadata)
        identityProviderSamlMetadata = identityProviderSamlMetadataDecoded
    }
}