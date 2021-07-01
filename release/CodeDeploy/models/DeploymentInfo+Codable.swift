// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DeploymentInfo: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case additionalDeploymentStatusInfo
        case applicationName
        case autoRollbackConfiguration
        case blueGreenDeploymentConfiguration
        case completeTime
        case computePlatform
        case createTime
        case creator
        case deploymentConfigName
        case deploymentGroupName
        case deploymentId
        case deploymentOverview
        case deploymentStatusMessages
        case deploymentStyle
        case description
        case errorInformation
        case externalId
        case fileExistsBehavior
        case ignoreApplicationStopFailures
        case instanceTerminationWaitTimeStarted
        case loadBalancerInfo
        case previousRevision
        case relatedDeployments
        case revision
        case rollbackInfo
        case startTime
        case status
        case targetInstances
        case updateOutdatedInstancesOnly
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let additionalDeploymentStatusInfo = additionalDeploymentStatusInfo {
            try encodeContainer.encode(additionalDeploymentStatusInfo, forKey: .additionalDeploymentStatusInfo)
        }
        if let applicationName = applicationName {
            try encodeContainer.encode(applicationName, forKey: .applicationName)
        }
        if let autoRollbackConfiguration = autoRollbackConfiguration {
            try encodeContainer.encode(autoRollbackConfiguration, forKey: .autoRollbackConfiguration)
        }
        if let blueGreenDeploymentConfiguration = blueGreenDeploymentConfiguration {
            try encodeContainer.encode(blueGreenDeploymentConfiguration, forKey: .blueGreenDeploymentConfiguration)
        }
        if let completeTime = completeTime {
            try encodeContainer.encode(completeTime.timeIntervalSince1970, forKey: .completeTime)
        }
        if let computePlatform = computePlatform {
            try encodeContainer.encode(computePlatform.rawValue, forKey: .computePlatform)
        }
        if let createTime = createTime {
            try encodeContainer.encode(createTime.timeIntervalSince1970, forKey: .createTime)
        }
        if let creator = creator {
            try encodeContainer.encode(creator.rawValue, forKey: .creator)
        }
        if let deploymentConfigName = deploymentConfigName {
            try encodeContainer.encode(deploymentConfigName, forKey: .deploymentConfigName)
        }
        if let deploymentGroupName = deploymentGroupName {
            try encodeContainer.encode(deploymentGroupName, forKey: .deploymentGroupName)
        }
        if let deploymentId = deploymentId {
            try encodeContainer.encode(deploymentId, forKey: .deploymentId)
        }
        if let deploymentOverview = deploymentOverview {
            try encodeContainer.encode(deploymentOverview, forKey: .deploymentOverview)
        }
        if let deploymentStatusMessages = deploymentStatusMessages {
            var deploymentStatusMessagesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .deploymentStatusMessages)
            for deploymentstatusmessagelist0 in deploymentStatusMessages {
                try deploymentStatusMessagesContainer.encode(deploymentstatusmessagelist0)
            }
        }
        if let deploymentStyle = deploymentStyle {
            try encodeContainer.encode(deploymentStyle, forKey: .deploymentStyle)
        }
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if let errorInformation = errorInformation {
            try encodeContainer.encode(errorInformation, forKey: .errorInformation)
        }
        if let externalId = externalId {
            try encodeContainer.encode(externalId, forKey: .externalId)
        }
        if let fileExistsBehavior = fileExistsBehavior {
            try encodeContainer.encode(fileExistsBehavior.rawValue, forKey: .fileExistsBehavior)
        }
        if ignoreApplicationStopFailures != false {
            try encodeContainer.encode(ignoreApplicationStopFailures, forKey: .ignoreApplicationStopFailures)
        }
        if instanceTerminationWaitTimeStarted != false {
            try encodeContainer.encode(instanceTerminationWaitTimeStarted, forKey: .instanceTerminationWaitTimeStarted)
        }
        if let loadBalancerInfo = loadBalancerInfo {
            try encodeContainer.encode(loadBalancerInfo, forKey: .loadBalancerInfo)
        }
        if let previousRevision = previousRevision {
            try encodeContainer.encode(previousRevision, forKey: .previousRevision)
        }
        if let relatedDeployments = relatedDeployments {
            try encodeContainer.encode(relatedDeployments, forKey: .relatedDeployments)
        }
        if let revision = revision {
            try encodeContainer.encode(revision, forKey: .revision)
        }
        if let rollbackInfo = rollbackInfo {
            try encodeContainer.encode(rollbackInfo, forKey: .rollbackInfo)
        }
        if let startTime = startTime {
            try encodeContainer.encode(startTime.timeIntervalSince1970, forKey: .startTime)
        }
        if let status = status {
            try encodeContainer.encode(status.rawValue, forKey: .status)
        }
        if let targetInstances = targetInstances {
            try encodeContainer.encode(targetInstances, forKey: .targetInstances)
        }
        if updateOutdatedInstancesOnly != false {
            try encodeContainer.encode(updateOutdatedInstancesOnly, forKey: .updateOutdatedInstancesOnly)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let applicationNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .applicationName)
        applicationName = applicationNameDecoded
        let deploymentGroupNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .deploymentGroupName)
        deploymentGroupName = deploymentGroupNameDecoded
        let deploymentConfigNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .deploymentConfigName)
        deploymentConfigName = deploymentConfigNameDecoded
        let deploymentIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .deploymentId)
        deploymentId = deploymentIdDecoded
        let previousRevisionDecoded = try containerValues.decodeIfPresent(RevisionLocation.self, forKey: .previousRevision)
        previousRevision = previousRevisionDecoded
        let revisionDecoded = try containerValues.decodeIfPresent(RevisionLocation.self, forKey: .revision)
        revision = revisionDecoded
        let statusDecoded = try containerValues.decodeIfPresent(DeploymentStatus.self, forKey: .status)
        status = statusDecoded
        let errorInformationDecoded = try containerValues.decodeIfPresent(ErrorInformation.self, forKey: .errorInformation)
        errorInformation = errorInformationDecoded
        let createTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .createTime)
        createTime = createTimeDecoded
        let startTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .startTime)
        startTime = startTimeDecoded
        let completeTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .completeTime)
        completeTime = completeTimeDecoded
        let deploymentOverviewDecoded = try containerValues.decodeIfPresent(DeploymentOverview.self, forKey: .deploymentOverview)
        deploymentOverview = deploymentOverviewDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let creatorDecoded = try containerValues.decodeIfPresent(DeploymentCreator.self, forKey: .creator)
        creator = creatorDecoded
        let ignoreApplicationStopFailuresDecoded = try containerValues.decode(Bool.self, forKey: .ignoreApplicationStopFailures)
        ignoreApplicationStopFailures = ignoreApplicationStopFailuresDecoded
        let autoRollbackConfigurationDecoded = try containerValues.decodeIfPresent(AutoRollbackConfiguration.self, forKey: .autoRollbackConfiguration)
        autoRollbackConfiguration = autoRollbackConfigurationDecoded
        let updateOutdatedInstancesOnlyDecoded = try containerValues.decode(Bool.self, forKey: .updateOutdatedInstancesOnly)
        updateOutdatedInstancesOnly = updateOutdatedInstancesOnlyDecoded
        let rollbackInfoDecoded = try containerValues.decodeIfPresent(RollbackInfo.self, forKey: .rollbackInfo)
        rollbackInfo = rollbackInfoDecoded
        let deploymentStyleDecoded = try containerValues.decodeIfPresent(DeploymentStyle.self, forKey: .deploymentStyle)
        deploymentStyle = deploymentStyleDecoded
        let targetInstancesDecoded = try containerValues.decodeIfPresent(TargetInstances.self, forKey: .targetInstances)
        targetInstances = targetInstancesDecoded
        let instanceTerminationWaitTimeStartedDecoded = try containerValues.decode(Bool.self, forKey: .instanceTerminationWaitTimeStarted)
        instanceTerminationWaitTimeStarted = instanceTerminationWaitTimeStartedDecoded
        let blueGreenDeploymentConfigurationDecoded = try containerValues.decodeIfPresent(BlueGreenDeploymentConfiguration.self, forKey: .blueGreenDeploymentConfiguration)
        blueGreenDeploymentConfiguration = blueGreenDeploymentConfigurationDecoded
        let loadBalancerInfoDecoded = try containerValues.decodeIfPresent(LoadBalancerInfo.self, forKey: .loadBalancerInfo)
        loadBalancerInfo = loadBalancerInfoDecoded
        let additionalDeploymentStatusInfoDecoded = try containerValues.decodeIfPresent(String.self, forKey: .additionalDeploymentStatusInfo)
        additionalDeploymentStatusInfo = additionalDeploymentStatusInfoDecoded
        let fileExistsBehaviorDecoded = try containerValues.decodeIfPresent(FileExistsBehavior.self, forKey: .fileExistsBehavior)
        fileExistsBehavior = fileExistsBehaviorDecoded
        let deploymentStatusMessagesContainer = try containerValues.decodeIfPresent([String?].self, forKey: .deploymentStatusMessages)
        var deploymentStatusMessagesDecoded0:[String]? = nil
        if let deploymentStatusMessagesContainer = deploymentStatusMessagesContainer {
            deploymentStatusMessagesDecoded0 = [String]()
            for string0 in deploymentStatusMessagesContainer {
                if let string0 = string0 {
                    deploymentStatusMessagesDecoded0?.append(string0)
                }
            }
        }
        deploymentStatusMessages = deploymentStatusMessagesDecoded0
        let computePlatformDecoded = try containerValues.decodeIfPresent(ComputePlatform.self, forKey: .computePlatform)
        computePlatform = computePlatformDecoded
        let externalIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .externalId)
        externalId = externalIdDecoded
        let relatedDeploymentsDecoded = try containerValues.decodeIfPresent(RelatedDeployments.self, forKey: .relatedDeployments)
        relatedDeployments = relatedDeploymentsDecoded
    }
}