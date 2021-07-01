// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateAccountInputBody: Equatable {
    public let email: String?
    public let accountName: String?
    public let roleName: String?
    public let iamUserAccessToBilling: IAMUserAccessToBilling?
    public let tags: [Tag]?
}

extension CreateAccountInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case accountName = "AccountName"
        case email = "Email"
        case iamUserAccessToBilling = "IamUserAccessToBilling"
        case roleName = "RoleName"
        case tags = "Tags"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let emailDecoded = try containerValues.decodeIfPresent(String.self, forKey: .email)
        email = emailDecoded
        let accountNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .accountName)
        accountName = accountNameDecoded
        let roleNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .roleName)
        roleName = roleNameDecoded
        let iamUserAccessToBillingDecoded = try containerValues.decodeIfPresent(IAMUserAccessToBilling.self, forKey: .iamUserAccessToBilling)
        iamUserAccessToBilling = iamUserAccessToBillingDecoded
        let tagsContainer = try containerValues.decodeIfPresent([Tag?].self, forKey: .tags)
        var tagsDecoded0:[Tag]? = nil
        if let tagsContainer = tagsContainer {
            tagsDecoded0 = [Tag]()
            for structure0 in tagsContainer {
                if let structure0 = structure0 {
                    tagsDecoded0?.append(structure0)
                }
            }
        }
        tags = tagsDecoded0
    }
}