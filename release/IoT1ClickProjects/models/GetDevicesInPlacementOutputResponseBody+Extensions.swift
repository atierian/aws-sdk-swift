// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetDevicesInPlacementOutputResponseBody: Equatable {
    public let devices: [String:String]?
}

extension GetDevicesInPlacementOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case devices
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let devicesContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .devices)
        var devicesDecoded0: [String:String]? = nil
        if let devicesContainer = devicesContainer {
            devicesDecoded0 = [String:String]()
            for (key0, deviceid0) in devicesContainer {
                if let deviceid0 = deviceid0 {
                    devicesDecoded0?[key0] = deviceid0
                }
            }
        }
        devices = devicesDecoded0
    }
}