// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct AddThingToThingGroupInputBody: Equatable {
    public let thingGroupName: String?
    public let thingGroupArn: String?
    public let thingName: String?
    public let thingArn: String?
    public let overrideDynamicGroups: Bool
}

extension AddThingToThingGroupInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case overrideDynamicGroups
        case thingArn
        case thingGroupArn
        case thingGroupName
        case thingName
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let thingGroupNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .thingGroupName)
        thingGroupName = thingGroupNameDecoded
        let thingGroupArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .thingGroupArn)
        thingGroupArn = thingGroupArnDecoded
        let thingNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .thingName)
        thingName = thingNameDecoded
        let thingArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .thingArn)
        thingArn = thingArnDecoded
        let overrideDynamicGroupsDecoded = try containerValues.decode(Bool.self, forKey: .overrideDynamicGroups)
        overrideDynamicGroups = overrideDynamicGroupsDecoded
    }
}