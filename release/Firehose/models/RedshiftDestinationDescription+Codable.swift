// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension RedshiftDestinationDescription: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case cloudWatchLoggingOptions = "CloudWatchLoggingOptions"
        case clusterJDBCURL = "ClusterJDBCURL"
        case copyCommand = "CopyCommand"
        case processingConfiguration = "ProcessingConfiguration"
        case retryOptions = "RetryOptions"
        case roleARN = "RoleARN"
        case s3BackupDescription = "S3BackupDescription"
        case s3BackupMode = "S3BackupMode"
        case s3DestinationDescription = "S3DestinationDescription"
        case username = "Username"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let cloudWatchLoggingOptions = cloudWatchLoggingOptions {
            try encodeContainer.encode(cloudWatchLoggingOptions, forKey: .cloudWatchLoggingOptions)
        }
        if let clusterJDBCURL = clusterJDBCURL {
            try encodeContainer.encode(clusterJDBCURL, forKey: .clusterJDBCURL)
        }
        if let copyCommand = copyCommand {
            try encodeContainer.encode(copyCommand, forKey: .copyCommand)
        }
        if let processingConfiguration = processingConfiguration {
            try encodeContainer.encode(processingConfiguration, forKey: .processingConfiguration)
        }
        if let retryOptions = retryOptions {
            try encodeContainer.encode(retryOptions, forKey: .retryOptions)
        }
        if let roleARN = roleARN {
            try encodeContainer.encode(roleARN, forKey: .roleARN)
        }
        if let s3BackupDescription = s3BackupDescription {
            try encodeContainer.encode(s3BackupDescription, forKey: .s3BackupDescription)
        }
        if let s3BackupMode = s3BackupMode {
            try encodeContainer.encode(s3BackupMode.rawValue, forKey: .s3BackupMode)
        }
        if let s3DestinationDescription = s3DestinationDescription {
            try encodeContainer.encode(s3DestinationDescription, forKey: .s3DestinationDescription)
        }
        if let username = username {
            try encodeContainer.encode(username, forKey: .username)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let roleARNDecoded = try containerValues.decodeIfPresent(String.self, forKey: .roleARN)
        roleARN = roleARNDecoded
        let clusterJDBCURLDecoded = try containerValues.decodeIfPresent(String.self, forKey: .clusterJDBCURL)
        clusterJDBCURL = clusterJDBCURLDecoded
        let copyCommandDecoded = try containerValues.decodeIfPresent(CopyCommand.self, forKey: .copyCommand)
        copyCommand = copyCommandDecoded
        let usernameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .username)
        username = usernameDecoded
        let retryOptionsDecoded = try containerValues.decodeIfPresent(RedshiftRetryOptions.self, forKey: .retryOptions)
        retryOptions = retryOptionsDecoded
        let s3DestinationDescriptionDecoded = try containerValues.decodeIfPresent(S3DestinationDescription.self, forKey: .s3DestinationDescription)
        s3DestinationDescription = s3DestinationDescriptionDecoded
        let processingConfigurationDecoded = try containerValues.decodeIfPresent(ProcessingConfiguration.self, forKey: .processingConfiguration)
        processingConfiguration = processingConfigurationDecoded
        let s3BackupModeDecoded = try containerValues.decodeIfPresent(RedshiftS3BackupMode.self, forKey: .s3BackupMode)
        s3BackupMode = s3BackupModeDecoded
        let s3BackupDescriptionDecoded = try containerValues.decodeIfPresent(S3DestinationDescription.self, forKey: .s3BackupDescription)
        s3BackupDescription = s3BackupDescriptionDecoded
        let cloudWatchLoggingOptionsDecoded = try containerValues.decodeIfPresent(CloudWatchLoggingOptions.self, forKey: .cloudWatchLoggingOptions)
        cloudWatchLoggingOptions = cloudWatchLoggingOptionsDecoded
    }
}