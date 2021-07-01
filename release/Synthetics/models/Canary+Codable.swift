// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Canary: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case artifactS3Location = "ArtifactS3Location"
        case code = "Code"
        case engineArn = "EngineArn"
        case executionRoleArn = "ExecutionRoleArn"
        case failureRetentionPeriodInDays = "FailureRetentionPeriodInDays"
        case id = "Id"
        case name = "Name"
        case runConfig = "RunConfig"
        case runtimeVersion = "RuntimeVersion"
        case schedule = "Schedule"
        case status = "Status"
        case successRetentionPeriodInDays = "SuccessRetentionPeriodInDays"
        case tags = "Tags"
        case timeline = "Timeline"
        case vpcConfig = "VpcConfig"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let artifactS3Location = artifactS3Location {
            try encodeContainer.encode(artifactS3Location, forKey: .artifactS3Location)
        }
        if let code = code {
            try encodeContainer.encode(code, forKey: .code)
        }
        if let engineArn = engineArn {
            try encodeContainer.encode(engineArn, forKey: .engineArn)
        }
        if let executionRoleArn = executionRoleArn {
            try encodeContainer.encode(executionRoleArn, forKey: .executionRoleArn)
        }
        if let failureRetentionPeriodInDays = failureRetentionPeriodInDays {
            try encodeContainer.encode(failureRetentionPeriodInDays, forKey: .failureRetentionPeriodInDays)
        }
        if let id = id {
            try encodeContainer.encode(id, forKey: .id)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let runConfig = runConfig {
            try encodeContainer.encode(runConfig, forKey: .runConfig)
        }
        if let runtimeVersion = runtimeVersion {
            try encodeContainer.encode(runtimeVersion, forKey: .runtimeVersion)
        }
        if let schedule = schedule {
            try encodeContainer.encode(schedule, forKey: .schedule)
        }
        if let status = status {
            try encodeContainer.encode(status, forKey: .status)
        }
        if let successRetentionPeriodInDays = successRetentionPeriodInDays {
            try encodeContainer.encode(successRetentionPeriodInDays, forKey: .successRetentionPeriodInDays)
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .tags)
            for (dictKey0, tagmap0) in tags {
                try tagsContainer.encode(tagmap0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let timeline = timeline {
            try encodeContainer.encode(timeline, forKey: .timeline)
        }
        if let vpcConfig = vpcConfig {
            try encodeContainer.encode(vpcConfig, forKey: .vpcConfig)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let idDecoded = try containerValues.decodeIfPresent(String.self, forKey: .id)
        id = idDecoded
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let codeDecoded = try containerValues.decodeIfPresent(CanaryCodeOutput.self, forKey: .code)
        code = codeDecoded
        let executionRoleArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .executionRoleArn)
        executionRoleArn = executionRoleArnDecoded
        let scheduleDecoded = try containerValues.decodeIfPresent(CanaryScheduleOutput.self, forKey: .schedule)
        schedule = scheduleDecoded
        let runConfigDecoded = try containerValues.decodeIfPresent(CanaryRunConfigOutput.self, forKey: .runConfig)
        runConfig = runConfigDecoded
        let successRetentionPeriodInDaysDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .successRetentionPeriodInDays)
        successRetentionPeriodInDays = successRetentionPeriodInDaysDecoded
        let failureRetentionPeriodInDaysDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .failureRetentionPeriodInDays)
        failureRetentionPeriodInDays = failureRetentionPeriodInDaysDecoded
        let statusDecoded = try containerValues.decodeIfPresent(CanaryStatus.self, forKey: .status)
        status = statusDecoded
        let timelineDecoded = try containerValues.decodeIfPresent(CanaryTimeline.self, forKey: .timeline)
        timeline = timelineDecoded
        let artifactS3LocationDecoded = try containerValues.decodeIfPresent(String.self, forKey: .artifactS3Location)
        artifactS3Location = artifactS3LocationDecoded
        let engineArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .engineArn)
        engineArn = engineArnDecoded
        let runtimeVersionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .runtimeVersion)
        runtimeVersion = runtimeVersionDecoded
        let vpcConfigDecoded = try containerValues.decodeIfPresent(VpcConfigOutput.self, forKey: .vpcConfig)
        vpcConfig = vpcConfigDecoded
        let tagsContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .tags)
        var tagsDecoded0: [String:String]? = nil
        if let tagsContainer = tagsContainer {
            tagsDecoded0 = [String:String]()
            for (key0, tagvalue0) in tagsContainer {
                if let tagvalue0 = tagvalue0 {
                    tagsDecoded0?[key0] = tagvalue0
                }
            }
        }
        tags = tagsDecoded0
    }
}