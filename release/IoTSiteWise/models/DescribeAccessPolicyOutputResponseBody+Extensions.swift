// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeAccessPolicyOutputResponseBody: Equatable {
    public let accessPolicyId: String?
    public let accessPolicyArn: String?
    public let accessPolicyIdentity: Identity?
    public let accessPolicyResource: Resource?
    public let accessPolicyPermission: Permission?
    public let accessPolicyCreationDate: Date?
    public let accessPolicyLastUpdateDate: Date?
}

extension DescribeAccessPolicyOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case accessPolicyArn
        case accessPolicyCreationDate
        case accessPolicyId
        case accessPolicyIdentity
        case accessPolicyLastUpdateDate
        case accessPolicyPermission
        case accessPolicyResource
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let accessPolicyIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .accessPolicyId)
        accessPolicyId = accessPolicyIdDecoded
        let accessPolicyArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .accessPolicyArn)
        accessPolicyArn = accessPolicyArnDecoded
        let accessPolicyIdentityDecoded = try containerValues.decodeIfPresent(Identity.self, forKey: .accessPolicyIdentity)
        accessPolicyIdentity = accessPolicyIdentityDecoded
        let accessPolicyResourceDecoded = try containerValues.decodeIfPresent(Resource.self, forKey: .accessPolicyResource)
        accessPolicyResource = accessPolicyResourceDecoded
        let accessPolicyPermissionDecoded = try containerValues.decodeIfPresent(Permission.self, forKey: .accessPolicyPermission)
        accessPolicyPermission = accessPolicyPermissionDecoded
        let accessPolicyCreationDateDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .accessPolicyCreationDate)
        accessPolicyCreationDate = accessPolicyCreationDateDecoded
        let accessPolicyLastUpdateDateDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .accessPolicyLastUpdateDate)
        accessPolicyLastUpdateDate = accessPolicyLastUpdateDateDecoded
    }
}