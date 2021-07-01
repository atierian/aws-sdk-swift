// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DatasetImportJob: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case creationDateTime
        case dataSource
        case datasetArn
        case datasetImportJobArn
        case failureReason
        case jobName
        case lastUpdatedDateTime
        case roleArn
        case status
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let creationDateTime = creationDateTime {
            try encodeContainer.encode(creationDateTime.timeIntervalSince1970, forKey: .creationDateTime)
        }
        if let dataSource = dataSource {
            try encodeContainer.encode(dataSource, forKey: .dataSource)
        }
        if let datasetArn = datasetArn {
            try encodeContainer.encode(datasetArn, forKey: .datasetArn)
        }
        if let datasetImportJobArn = datasetImportJobArn {
            try encodeContainer.encode(datasetImportJobArn, forKey: .datasetImportJobArn)
        }
        if let failureReason = failureReason {
            try encodeContainer.encode(failureReason, forKey: .failureReason)
        }
        if let jobName = jobName {
            try encodeContainer.encode(jobName, forKey: .jobName)
        }
        if let lastUpdatedDateTime = lastUpdatedDateTime {
            try encodeContainer.encode(lastUpdatedDateTime.timeIntervalSince1970, forKey: .lastUpdatedDateTime)
        }
        if let roleArn = roleArn {
            try encodeContainer.encode(roleArn, forKey: .roleArn)
        }
        if let status = status {
            try encodeContainer.encode(status, forKey: .status)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let jobNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .jobName)
        jobName = jobNameDecoded
        let datasetImportJobArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .datasetImportJobArn)
        datasetImportJobArn = datasetImportJobArnDecoded
        let datasetArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .datasetArn)
        datasetArn = datasetArnDecoded
        let dataSourceDecoded = try containerValues.decodeIfPresent(DataSource.self, forKey: .dataSource)
        dataSource = dataSourceDecoded
        let roleArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .roleArn)
        roleArn = roleArnDecoded
        let statusDecoded = try containerValues.decodeIfPresent(String.self, forKey: .status)
        status = statusDecoded
        let creationDateTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .creationDateTime)
        creationDateTime = creationDateTimeDecoded
        let lastUpdatedDateTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastUpdatedDateTime)
        lastUpdatedDateTime = lastUpdatedDateTimeDecoded
        let failureReasonDecoded = try containerValues.decodeIfPresent(String.self, forKey: .failureReason)
        failureReason = failureReasonDecoded
    }
}