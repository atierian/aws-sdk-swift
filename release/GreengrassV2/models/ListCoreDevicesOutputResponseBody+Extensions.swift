// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListCoreDevicesOutputResponseBody: Equatable {
    public let coreDevices: [CoreDevice]?
    public let nextToken: String?
}

extension ListCoreDevicesOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case coreDevices
        case nextToken
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let coreDevicesContainer = try containerValues.decodeIfPresent([CoreDevice?].self, forKey: .coreDevices)
        var coreDevicesDecoded0:[CoreDevice]? = nil
        if let coreDevicesContainer = coreDevicesContainer {
            coreDevicesDecoded0 = [CoreDevice]()
            for structure0 in coreDevicesContainer {
                if let structure0 = structure0 {
                    coreDevicesDecoded0?.append(structure0)
                }
            }
        }
        coreDevices = coreDevicesDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}