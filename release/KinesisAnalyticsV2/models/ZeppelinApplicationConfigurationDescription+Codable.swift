// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ZeppelinApplicationConfigurationDescription: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case catalogConfigurationDescription = "CatalogConfigurationDescription"
        case customArtifactsConfigurationDescription = "CustomArtifactsConfigurationDescription"
        case deployAsApplicationConfigurationDescription = "DeployAsApplicationConfigurationDescription"
        case monitoringConfigurationDescription = "MonitoringConfigurationDescription"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let catalogConfigurationDescription = catalogConfigurationDescription {
            try encodeContainer.encode(catalogConfigurationDescription, forKey: .catalogConfigurationDescription)
        }
        if let customArtifactsConfigurationDescription = customArtifactsConfigurationDescription {
            var customArtifactsConfigurationDescriptionContainer = encodeContainer.nestedUnkeyedContainer(forKey: .customArtifactsConfigurationDescription)
            for customartifactsconfigurationdescriptionlist0 in customArtifactsConfigurationDescription {
                try customArtifactsConfigurationDescriptionContainer.encode(customartifactsconfigurationdescriptionlist0)
            }
        }
        if let deployAsApplicationConfigurationDescription = deployAsApplicationConfigurationDescription {
            try encodeContainer.encode(deployAsApplicationConfigurationDescription, forKey: .deployAsApplicationConfigurationDescription)
        }
        if let monitoringConfigurationDescription = monitoringConfigurationDescription {
            try encodeContainer.encode(monitoringConfigurationDescription, forKey: .monitoringConfigurationDescription)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let monitoringConfigurationDescriptionDecoded = try containerValues.decodeIfPresent(ZeppelinMonitoringConfigurationDescription.self, forKey: .monitoringConfigurationDescription)
        monitoringConfigurationDescription = monitoringConfigurationDescriptionDecoded
        let catalogConfigurationDescriptionDecoded = try containerValues.decodeIfPresent(CatalogConfigurationDescription.self, forKey: .catalogConfigurationDescription)
        catalogConfigurationDescription = catalogConfigurationDescriptionDecoded
        let deployAsApplicationConfigurationDescriptionDecoded = try containerValues.decodeIfPresent(DeployAsApplicationConfigurationDescription.self, forKey: .deployAsApplicationConfigurationDescription)
        deployAsApplicationConfigurationDescription = deployAsApplicationConfigurationDescriptionDecoded
        let customArtifactsConfigurationDescriptionContainer = try containerValues.decodeIfPresent([CustomArtifactConfigurationDescription?].self, forKey: .customArtifactsConfigurationDescription)
        var customArtifactsConfigurationDescriptionDecoded0:[CustomArtifactConfigurationDescription]? = nil
        if let customArtifactsConfigurationDescriptionContainer = customArtifactsConfigurationDescriptionContainer {
            customArtifactsConfigurationDescriptionDecoded0 = [CustomArtifactConfigurationDescription]()
            for structure0 in customArtifactsConfigurationDescriptionContainer {
                if let structure0 = structure0 {
                    customArtifactsConfigurationDescriptionDecoded0?.append(structure0)
                }
            }
        }
        customArtifactsConfigurationDescription = customArtifactsConfigurationDescriptionDecoded0
    }
}