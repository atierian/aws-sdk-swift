// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct SendSSHPublicKeyInputBody: Equatable {
    public let instanceId: String?
    public let instanceOSUser: String?
    public let sSHPublicKey: String?
    public let availabilityZone: String?
}

extension SendSSHPublicKeyInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case availabilityZone = "AvailabilityZone"
        case instanceId = "InstanceId"
        case instanceOSUser = "InstanceOSUser"
        case sSHPublicKey = "SSHPublicKey"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let instanceIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .instanceId)
        instanceId = instanceIdDecoded
        let instanceOSUserDecoded = try containerValues.decodeIfPresent(String.self, forKey: .instanceOSUser)
        instanceOSUser = instanceOSUserDecoded
        let sSHPublicKeyDecoded = try containerValues.decodeIfPresent(String.self, forKey: .sSHPublicKey)
        sSHPublicKey = sSHPublicKeyDecoded
        let availabilityZoneDecoded = try containerValues.decodeIfPresent(String.self, forKey: .availabilityZone)
        availabilityZone = availabilityZoneDecoded
    }
}