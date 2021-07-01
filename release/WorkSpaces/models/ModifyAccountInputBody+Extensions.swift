// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ModifyAccountInputBody: Equatable {
    public let dedicatedTenancySupport: DedicatedTenancySupportEnum?
    public let dedicatedTenancyManagementCidrRange: String?
}

extension ModifyAccountInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case dedicatedTenancyManagementCidrRange = "DedicatedTenancyManagementCidrRange"
        case dedicatedTenancySupport = "DedicatedTenancySupport"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let dedicatedTenancySupportDecoded = try containerValues.decodeIfPresent(DedicatedTenancySupportEnum.self, forKey: .dedicatedTenancySupport)
        dedicatedTenancySupport = dedicatedTenancySupportDecoded
        let dedicatedTenancyManagementCidrRangeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .dedicatedTenancyManagementCidrRange)
        dedicatedTenancyManagementCidrRange = dedicatedTenancyManagementCidrRangeDecoded
    }
}