// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Project: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case arn
        case artifacts
        case badge
        case buildBatchConfig
        case cache
        case concurrentBuildLimit
        case created
        case description
        case encryptionKey
        case environment
        case fileSystemLocations
        case lastModified
        case logsConfig
        case name
        case queuedTimeoutInMinutes
        case secondaryArtifacts
        case secondarySourceVersions
        case secondarySources
        case serviceRole
        case source
        case sourceVersion
        case tags
        case timeoutInMinutes
        case vpcConfig
        case webhook
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let arn = arn {
            try encodeContainer.encode(arn, forKey: .arn)
        }
        if let artifacts = artifacts {
            try encodeContainer.encode(artifacts, forKey: .artifacts)
        }
        if let badge = badge {
            try encodeContainer.encode(badge, forKey: .badge)
        }
        if let buildBatchConfig = buildBatchConfig {
            try encodeContainer.encode(buildBatchConfig, forKey: .buildBatchConfig)
        }
        if let cache = cache {
            try encodeContainer.encode(cache, forKey: .cache)
        }
        if let concurrentBuildLimit = concurrentBuildLimit {
            try encodeContainer.encode(concurrentBuildLimit, forKey: .concurrentBuildLimit)
        }
        if let created = created {
            try encodeContainer.encode(created.timeIntervalSince1970, forKey: .created)
        }
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if let encryptionKey = encryptionKey {
            try encodeContainer.encode(encryptionKey, forKey: .encryptionKey)
        }
        if let environment = environment {
            try encodeContainer.encode(environment, forKey: .environment)
        }
        if let fileSystemLocations = fileSystemLocations {
            var fileSystemLocationsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .fileSystemLocations)
            for projectfilesystemlocations0 in fileSystemLocations {
                try fileSystemLocationsContainer.encode(projectfilesystemlocations0)
            }
        }
        if let lastModified = lastModified {
            try encodeContainer.encode(lastModified.timeIntervalSince1970, forKey: .lastModified)
        }
        if let logsConfig = logsConfig {
            try encodeContainer.encode(logsConfig, forKey: .logsConfig)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let queuedTimeoutInMinutes = queuedTimeoutInMinutes {
            try encodeContainer.encode(queuedTimeoutInMinutes, forKey: .queuedTimeoutInMinutes)
        }
        if let secondaryArtifacts = secondaryArtifacts {
            var secondaryArtifactsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .secondaryArtifacts)
            for projectartifactslist0 in secondaryArtifacts {
                try secondaryArtifactsContainer.encode(projectartifactslist0)
            }
        }
        if let secondarySourceVersions = secondarySourceVersions {
            var secondarySourceVersionsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .secondarySourceVersions)
            for projectsecondarysourceversions0 in secondarySourceVersions {
                try secondarySourceVersionsContainer.encode(projectsecondarysourceversions0)
            }
        }
        if let secondarySources = secondarySources {
            var secondarySourcesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .secondarySources)
            for projectsources0 in secondarySources {
                try secondarySourcesContainer.encode(projectsources0)
            }
        }
        if let serviceRole = serviceRole {
            try encodeContainer.encode(serviceRole, forKey: .serviceRole)
        }
        if let source = source {
            try encodeContainer.encode(source, forKey: .source)
        }
        if let sourceVersion = sourceVersion {
            try encodeContainer.encode(sourceVersion, forKey: .sourceVersion)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .tags)
            for taglist0 in tags {
                try tagsContainer.encode(taglist0)
            }
        }
        if let timeoutInMinutes = timeoutInMinutes {
            try encodeContainer.encode(timeoutInMinutes, forKey: .timeoutInMinutes)
        }
        if let vpcConfig = vpcConfig {
            try encodeContainer.encode(vpcConfig, forKey: .vpcConfig)
        }
        if let webhook = webhook {
            try encodeContainer.encode(webhook, forKey: .webhook)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let arnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .arn)
        arn = arnDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let sourceDecoded = try containerValues.decodeIfPresent(ProjectSource.self, forKey: .source)
        source = sourceDecoded
        let secondarySourcesContainer = try containerValues.decodeIfPresent([ProjectSource?].self, forKey: .secondarySources)
        var secondarySourcesDecoded0:[ProjectSource]? = nil
        if let secondarySourcesContainer = secondarySourcesContainer {
            secondarySourcesDecoded0 = [ProjectSource]()
            for structure0 in secondarySourcesContainer {
                if let structure0 = structure0 {
                    secondarySourcesDecoded0?.append(structure0)
                }
            }
        }
        secondarySources = secondarySourcesDecoded0
        let sourceVersionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .sourceVersion)
        sourceVersion = sourceVersionDecoded
        let secondarySourceVersionsContainer = try containerValues.decodeIfPresent([ProjectSourceVersion?].self, forKey: .secondarySourceVersions)
        var secondarySourceVersionsDecoded0:[ProjectSourceVersion]? = nil
        if let secondarySourceVersionsContainer = secondarySourceVersionsContainer {
            secondarySourceVersionsDecoded0 = [ProjectSourceVersion]()
            for structure0 in secondarySourceVersionsContainer {
                if let structure0 = structure0 {
                    secondarySourceVersionsDecoded0?.append(structure0)
                }
            }
        }
        secondarySourceVersions = secondarySourceVersionsDecoded0
        let artifactsDecoded = try containerValues.decodeIfPresent(ProjectArtifacts.self, forKey: .artifacts)
        artifacts = artifactsDecoded
        let secondaryArtifactsContainer = try containerValues.decodeIfPresent([ProjectArtifacts?].self, forKey: .secondaryArtifacts)
        var secondaryArtifactsDecoded0:[ProjectArtifacts]? = nil
        if let secondaryArtifactsContainer = secondaryArtifactsContainer {
            secondaryArtifactsDecoded0 = [ProjectArtifacts]()
            for structure0 in secondaryArtifactsContainer {
                if let structure0 = structure0 {
                    secondaryArtifactsDecoded0?.append(structure0)
                }
            }
        }
        secondaryArtifacts = secondaryArtifactsDecoded0
        let cacheDecoded = try containerValues.decodeIfPresent(ProjectCache.self, forKey: .cache)
        cache = cacheDecoded
        let environmentDecoded = try containerValues.decodeIfPresent(ProjectEnvironment.self, forKey: .environment)
        environment = environmentDecoded
        let serviceRoleDecoded = try containerValues.decodeIfPresent(String.self, forKey: .serviceRole)
        serviceRole = serviceRoleDecoded
        let timeoutInMinutesDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .timeoutInMinutes)
        timeoutInMinutes = timeoutInMinutesDecoded
        let queuedTimeoutInMinutesDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .queuedTimeoutInMinutes)
        queuedTimeoutInMinutes = queuedTimeoutInMinutesDecoded
        let encryptionKeyDecoded = try containerValues.decodeIfPresent(String.self, forKey: .encryptionKey)
        encryptionKey = encryptionKeyDecoded
        let tagsContainer = try containerValues.decodeIfPresent([Tag?].self, forKey: .tags)
        var tagsDecoded0:[Tag]? = nil
        if let tagsContainer = tagsContainer {
            tagsDecoded0 = [Tag]()
            for structure0 in tagsContainer {
                if let structure0 = structure0 {
                    tagsDecoded0?.append(structure0)
                }
            }
        }
        tags = tagsDecoded0
        let createdDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .created)
        created = createdDecoded
        let lastModifiedDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastModified)
        lastModified = lastModifiedDecoded
        let webhookDecoded = try containerValues.decodeIfPresent(Webhook.self, forKey: .webhook)
        webhook = webhookDecoded
        let vpcConfigDecoded = try containerValues.decodeIfPresent(VpcConfig.self, forKey: .vpcConfig)
        vpcConfig = vpcConfigDecoded
        let badgeDecoded = try containerValues.decodeIfPresent(ProjectBadge.self, forKey: .badge)
        badge = badgeDecoded
        let logsConfigDecoded = try containerValues.decodeIfPresent(LogsConfig.self, forKey: .logsConfig)
        logsConfig = logsConfigDecoded
        let fileSystemLocationsContainer = try containerValues.decodeIfPresent([ProjectFileSystemLocation?].self, forKey: .fileSystemLocations)
        var fileSystemLocationsDecoded0:[ProjectFileSystemLocation]? = nil
        if let fileSystemLocationsContainer = fileSystemLocationsContainer {
            fileSystemLocationsDecoded0 = [ProjectFileSystemLocation]()
            for structure0 in fileSystemLocationsContainer {
                if let structure0 = structure0 {
                    fileSystemLocationsDecoded0?.append(structure0)
                }
            }
        }
        fileSystemLocations = fileSystemLocationsDecoded0
        let buildBatchConfigDecoded = try containerValues.decodeIfPresent(ProjectBuildBatchConfig.self, forKey: .buildBatchConfig)
        buildBatchConfig = buildBatchConfigDecoded
        let concurrentBuildLimitDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .concurrentBuildLimit)
        concurrentBuildLimit = concurrentBuildLimitDecoded
    }
}