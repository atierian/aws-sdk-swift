// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Stack: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case agentVersion = "AgentVersion"
        case arn = "Arn"
        case attributes = "Attributes"
        case chefConfiguration = "ChefConfiguration"
        case configurationManager = "ConfigurationManager"
        case createdAt = "CreatedAt"
        case customCookbooksSource = "CustomCookbooksSource"
        case customJson = "CustomJson"
        case defaultAvailabilityZone = "DefaultAvailabilityZone"
        case defaultInstanceProfileArn = "DefaultInstanceProfileArn"
        case defaultOs = "DefaultOs"
        case defaultRootDeviceType = "DefaultRootDeviceType"
        case defaultSshKeyName = "DefaultSshKeyName"
        case defaultSubnetId = "DefaultSubnetId"
        case hostnameTheme = "HostnameTheme"
        case name = "Name"
        case region = "Region"
        case serviceRoleArn = "ServiceRoleArn"
        case stackId = "StackId"
        case useCustomCookbooks = "UseCustomCookbooks"
        case useOpsworksSecurityGroups = "UseOpsworksSecurityGroups"
        case vpcId = "VpcId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let agentVersion = agentVersion {
            try encodeContainer.encode(agentVersion, forKey: .agentVersion)
        }
        if let arn = arn {
            try encodeContainer.encode(arn, forKey: .arn)
        }
        if let attributes = attributes {
            var attributesContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .attributes)
            for (dictKey0, stackattributes0) in attributes {
                try attributesContainer.encode(stackattributes0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let chefConfiguration = chefConfiguration {
            try encodeContainer.encode(chefConfiguration, forKey: .chefConfiguration)
        }
        if let configurationManager = configurationManager {
            try encodeContainer.encode(configurationManager, forKey: .configurationManager)
        }
        if let createdAt = createdAt {
            try encodeContainer.encode(createdAt, forKey: .createdAt)
        }
        if let customCookbooksSource = customCookbooksSource {
            try encodeContainer.encode(customCookbooksSource, forKey: .customCookbooksSource)
        }
        if let customJson = customJson {
            try encodeContainer.encode(customJson, forKey: .customJson)
        }
        if let defaultAvailabilityZone = defaultAvailabilityZone {
            try encodeContainer.encode(defaultAvailabilityZone, forKey: .defaultAvailabilityZone)
        }
        if let defaultInstanceProfileArn = defaultInstanceProfileArn {
            try encodeContainer.encode(defaultInstanceProfileArn, forKey: .defaultInstanceProfileArn)
        }
        if let defaultOs = defaultOs {
            try encodeContainer.encode(defaultOs, forKey: .defaultOs)
        }
        if let defaultRootDeviceType = defaultRootDeviceType {
            try encodeContainer.encode(defaultRootDeviceType.rawValue, forKey: .defaultRootDeviceType)
        }
        if let defaultSshKeyName = defaultSshKeyName {
            try encodeContainer.encode(defaultSshKeyName, forKey: .defaultSshKeyName)
        }
        if let defaultSubnetId = defaultSubnetId {
            try encodeContainer.encode(defaultSubnetId, forKey: .defaultSubnetId)
        }
        if let hostnameTheme = hostnameTheme {
            try encodeContainer.encode(hostnameTheme, forKey: .hostnameTheme)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let region = region {
            try encodeContainer.encode(region, forKey: .region)
        }
        if let serviceRoleArn = serviceRoleArn {
            try encodeContainer.encode(serviceRoleArn, forKey: .serviceRoleArn)
        }
        if let stackId = stackId {
            try encodeContainer.encode(stackId, forKey: .stackId)
        }
        if let useCustomCookbooks = useCustomCookbooks {
            try encodeContainer.encode(useCustomCookbooks, forKey: .useCustomCookbooks)
        }
        if let useOpsworksSecurityGroups = useOpsworksSecurityGroups {
            try encodeContainer.encode(useOpsworksSecurityGroups, forKey: .useOpsworksSecurityGroups)
        }
        if let vpcId = vpcId {
            try encodeContainer.encode(vpcId, forKey: .vpcId)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let stackIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .stackId)
        stackId = stackIdDecoded
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let arnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .arn)
        arn = arnDecoded
        let regionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .region)
        region = regionDecoded
        let vpcIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .vpcId)
        vpcId = vpcIdDecoded
        let attributesContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .attributes)
        var attributesDecoded0: [String:String]? = nil
        if let attributesContainer = attributesContainer {
            attributesDecoded0 = [String:String]()
            for (key0, string0) in attributesContainer {
                if let string0 = string0 {
                    attributesDecoded0?[key0] = string0
                }
            }
        }
        attributes = attributesDecoded0
        let serviceRoleArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .serviceRoleArn)
        serviceRoleArn = serviceRoleArnDecoded
        let defaultInstanceProfileArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .defaultInstanceProfileArn)
        defaultInstanceProfileArn = defaultInstanceProfileArnDecoded
        let defaultOsDecoded = try containerValues.decodeIfPresent(String.self, forKey: .defaultOs)
        defaultOs = defaultOsDecoded
        let hostnameThemeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .hostnameTheme)
        hostnameTheme = hostnameThemeDecoded
        let defaultAvailabilityZoneDecoded = try containerValues.decodeIfPresent(String.self, forKey: .defaultAvailabilityZone)
        defaultAvailabilityZone = defaultAvailabilityZoneDecoded
        let defaultSubnetIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .defaultSubnetId)
        defaultSubnetId = defaultSubnetIdDecoded
        let customJsonDecoded = try containerValues.decodeIfPresent(String.self, forKey: .customJson)
        customJson = customJsonDecoded
        let configurationManagerDecoded = try containerValues.decodeIfPresent(StackConfigurationManager.self, forKey: .configurationManager)
        configurationManager = configurationManagerDecoded
        let chefConfigurationDecoded = try containerValues.decodeIfPresent(ChefConfiguration.self, forKey: .chefConfiguration)
        chefConfiguration = chefConfigurationDecoded
        let useCustomCookbooksDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .useCustomCookbooks)
        useCustomCookbooks = useCustomCookbooksDecoded
        let useOpsworksSecurityGroupsDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .useOpsworksSecurityGroups)
        useOpsworksSecurityGroups = useOpsworksSecurityGroupsDecoded
        let customCookbooksSourceDecoded = try containerValues.decodeIfPresent(Source.self, forKey: .customCookbooksSource)
        customCookbooksSource = customCookbooksSourceDecoded
        let defaultSshKeyNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .defaultSshKeyName)
        defaultSshKeyName = defaultSshKeyNameDecoded
        let createdAtDecoded = try containerValues.decodeIfPresent(String.self, forKey: .createdAt)
        createdAt = createdAtDecoded
        let defaultRootDeviceTypeDecoded = try containerValues.decodeIfPresent(RootDeviceType.self, forKey: .defaultRootDeviceType)
        defaultRootDeviceType = defaultRootDeviceTypeDecoded
        let agentVersionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .agentVersion)
        agentVersion = agentVersionDecoded
    }
}