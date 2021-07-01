// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListDeviceInstancesOutputResponseBody: Equatable {
    public let deviceInstances: [DeviceInstance]?
    public let nextToken: String?
}

extension ListDeviceInstancesOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case deviceInstances
        case nextToken
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let deviceInstancesContainer = try containerValues.decodeIfPresent([DeviceInstance?].self, forKey: .deviceInstances)
        var deviceInstancesDecoded0:[DeviceInstance]? = nil
        if let deviceInstancesContainer = deviceInstancesContainer {
            deviceInstancesDecoded0 = [DeviceInstance]()
            for structure0 in deviceInstancesContainer {
                if let structure0 = structure0 {
                    deviceInstancesDecoded0?.append(structure0)
                }
            }
        }
        deviceInstances = deviceInstancesDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}