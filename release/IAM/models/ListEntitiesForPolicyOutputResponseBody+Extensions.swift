// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListEntitiesForPolicyOutputResponseBody: Equatable {
    public let policyGroups: [PolicyGroup]?
    public let policyUsers: [PolicyUser]?
    public let policyRoles: [PolicyRole]?
    public let isTruncated: Bool
    public let marker: String?
}

extension ListEntitiesForPolicyOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case isTruncated = "IsTruncated"
        case marker = "Marker"
        case policyGroups = "PolicyGroups"
        case policyRoles = "PolicyRoles"
        case policyUsers = "PolicyUsers"
    }

    public init (from decoder: Decoder) throws {
        let topLevelContainer = try decoder.container(keyedBy: Key.self)
        let containerValues = try topLevelContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: Key("ListEntitiesForPolicyResult"))
        if containerValues.contains(.policyGroups) {
            struct KeyVal0{struct member{}}
            let policyGroupsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.member>.CodingKeys.self, forKey: .policyGroups)
            if let policyGroupsWrappedContainer = policyGroupsWrappedContainer {
                let policyGroupsContainer = try policyGroupsWrappedContainer.decodeIfPresent([PolicyGroup].self, forKey: .member)
                var policyGroupsBuffer:[PolicyGroup]? = nil
                if let policyGroupsContainer = policyGroupsContainer {
                    policyGroupsBuffer = [PolicyGroup]()
                    for structureContainer0 in policyGroupsContainer {
                        policyGroupsBuffer?.append(structureContainer0)
                    }
                }
                policyGroups = policyGroupsBuffer
            } else {
                policyGroups = []
            }
        } else {
            policyGroups = nil
        }
        if containerValues.contains(.policyUsers) {
            struct KeyVal0{struct member{}}
            let policyUsersWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.member>.CodingKeys.self, forKey: .policyUsers)
            if let policyUsersWrappedContainer = policyUsersWrappedContainer {
                let policyUsersContainer = try policyUsersWrappedContainer.decodeIfPresent([PolicyUser].self, forKey: .member)
                var policyUsersBuffer:[PolicyUser]? = nil
                if let policyUsersContainer = policyUsersContainer {
                    policyUsersBuffer = [PolicyUser]()
                    for structureContainer0 in policyUsersContainer {
                        policyUsersBuffer?.append(structureContainer0)
                    }
                }
                policyUsers = policyUsersBuffer
            } else {
                policyUsers = []
            }
        } else {
            policyUsers = nil
        }
        if containerValues.contains(.policyRoles) {
            struct KeyVal0{struct member{}}
            let policyRolesWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.member>.CodingKeys.self, forKey: .policyRoles)
            if let policyRolesWrappedContainer = policyRolesWrappedContainer {
                let policyRolesContainer = try policyRolesWrappedContainer.decodeIfPresent([PolicyRole].self, forKey: .member)
                var policyRolesBuffer:[PolicyRole]? = nil
                if let policyRolesContainer = policyRolesContainer {
                    policyRolesBuffer = [PolicyRole]()
                    for structureContainer0 in policyRolesContainer {
                        policyRolesBuffer?.append(structureContainer0)
                    }
                }
                policyRoles = policyRolesBuffer
            } else {
                policyRoles = []
            }
        } else {
            policyRoles = nil
        }
        let isTruncatedDecoded = try containerValues.decode(Bool.self, forKey: .isTruncated)
        isTruncated = isTruncatedDecoded
        let markerDecoded = try containerValues.decodeIfPresent(String.self, forKey: .marker)
        marker = markerDecoded
    }
}