// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DeviceData: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case createdTime = "CreatedTime"
        case deviceArn = "DeviceArn"
        case deviceName = "DeviceName"
        case deviceSerialNumber = "DeviceSerialNumber"
        case deviceStatus = "DeviceStatus"
        case deviceStatusInfo = "DeviceStatusInfo"
        case deviceType = "DeviceType"
        case macAddress = "MacAddress"
        case networkProfileArn = "NetworkProfileArn"
        case networkProfileName = "NetworkProfileName"
        case roomArn = "RoomArn"
        case roomName = "RoomName"
        case softwareVersion = "SoftwareVersion"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let createdTime = createdTime {
            try encodeContainer.encode(createdTime.timeIntervalSince1970, forKey: .createdTime)
        }
        if let deviceArn = deviceArn {
            try encodeContainer.encode(deviceArn, forKey: .deviceArn)
        }
        if let deviceName = deviceName {
            try encodeContainer.encode(deviceName, forKey: .deviceName)
        }
        if let deviceSerialNumber = deviceSerialNumber {
            try encodeContainer.encode(deviceSerialNumber, forKey: .deviceSerialNumber)
        }
        if let deviceStatus = deviceStatus {
            try encodeContainer.encode(deviceStatus.rawValue, forKey: .deviceStatus)
        }
        if let deviceStatusInfo = deviceStatusInfo {
            try encodeContainer.encode(deviceStatusInfo, forKey: .deviceStatusInfo)
        }
        if let deviceType = deviceType {
            try encodeContainer.encode(deviceType, forKey: .deviceType)
        }
        if let macAddress = macAddress {
            try encodeContainer.encode(macAddress, forKey: .macAddress)
        }
        if let networkProfileArn = networkProfileArn {
            try encodeContainer.encode(networkProfileArn, forKey: .networkProfileArn)
        }
        if let networkProfileName = networkProfileName {
            try encodeContainer.encode(networkProfileName, forKey: .networkProfileName)
        }
        if let roomArn = roomArn {
            try encodeContainer.encode(roomArn, forKey: .roomArn)
        }
        if let roomName = roomName {
            try encodeContainer.encode(roomName, forKey: .roomName)
        }
        if let softwareVersion = softwareVersion {
            try encodeContainer.encode(softwareVersion, forKey: .softwareVersion)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let deviceArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .deviceArn)
        deviceArn = deviceArnDecoded
        let deviceSerialNumberDecoded = try containerValues.decodeIfPresent(String.self, forKey: .deviceSerialNumber)
        deviceSerialNumber = deviceSerialNumberDecoded
        let deviceTypeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .deviceType)
        deviceType = deviceTypeDecoded
        let deviceNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .deviceName)
        deviceName = deviceNameDecoded
        let softwareVersionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .softwareVersion)
        softwareVersion = softwareVersionDecoded
        let macAddressDecoded = try containerValues.decodeIfPresent(String.self, forKey: .macAddress)
        macAddress = macAddressDecoded
        let deviceStatusDecoded = try containerValues.decodeIfPresent(DeviceStatus.self, forKey: .deviceStatus)
        deviceStatus = deviceStatusDecoded
        let networkProfileArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .networkProfileArn)
        networkProfileArn = networkProfileArnDecoded
        let networkProfileNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .networkProfileName)
        networkProfileName = networkProfileNameDecoded
        let roomArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .roomArn)
        roomArn = roomArnDecoded
        let roomNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .roomName)
        roomName = roomNameDecoded
        let deviceStatusInfoDecoded = try containerValues.decodeIfPresent(DeviceStatusInfo.self, forKey: .deviceStatusInfo)
        deviceStatusInfo = deviceStatusInfoDecoded
        let createdTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .createdTime)
        createdTime = createdTimeDecoded
    }
}