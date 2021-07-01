// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension LinuxParameters: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case capabilities
        case devices
        case initProcessEnabled
        case maxSwap
        case sharedMemorySize
        case swappiness
        case tmpfs
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let capabilities = capabilities {
            try encodeContainer.encode(capabilities, forKey: .capabilities)
        }
        if let devices = devices {
            var devicesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .devices)
            for deviceslist0 in devices {
                try devicesContainer.encode(deviceslist0)
            }
        }
        if let initProcessEnabled = initProcessEnabled {
            try encodeContainer.encode(initProcessEnabled, forKey: .initProcessEnabled)
        }
        if let maxSwap = maxSwap {
            try encodeContainer.encode(maxSwap, forKey: .maxSwap)
        }
        if let sharedMemorySize = sharedMemorySize {
            try encodeContainer.encode(sharedMemorySize, forKey: .sharedMemorySize)
        }
        if let swappiness = swappiness {
            try encodeContainer.encode(swappiness, forKey: .swappiness)
        }
        if let tmpfs = tmpfs {
            var tmpfsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .tmpfs)
            for tmpfslist0 in tmpfs {
                try tmpfsContainer.encode(tmpfslist0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let capabilitiesDecoded = try containerValues.decodeIfPresent(KernelCapabilities.self, forKey: .capabilities)
        capabilities = capabilitiesDecoded
        let devicesContainer = try containerValues.decodeIfPresent([Device?].self, forKey: .devices)
        var devicesDecoded0:[Device]? = nil
        if let devicesContainer = devicesContainer {
            devicesDecoded0 = [Device]()
            for structure0 in devicesContainer {
                if let structure0 = structure0 {
                    devicesDecoded0?.append(structure0)
                }
            }
        }
        devices = devicesDecoded0
        let initProcessEnabledDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .initProcessEnabled)
        initProcessEnabled = initProcessEnabledDecoded
        let sharedMemorySizeDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .sharedMemorySize)
        sharedMemorySize = sharedMemorySizeDecoded
        let tmpfsContainer = try containerValues.decodeIfPresent([Tmpfs?].self, forKey: .tmpfs)
        var tmpfsDecoded0:[Tmpfs]? = nil
        if let tmpfsContainer = tmpfsContainer {
            tmpfsDecoded0 = [Tmpfs]()
            for structure0 in tmpfsContainer {
                if let structure0 = structure0 {
                    tmpfsDecoded0?.append(structure0)
                }
            }
        }
        tmpfs = tmpfsDecoded0
        let maxSwapDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .maxSwap)
        maxSwap = maxSwapDecoded
        let swappinessDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .swappiness)
        swappiness = swappinessDecoded
    }
}