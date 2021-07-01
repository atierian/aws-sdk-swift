// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Evaluation: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case computeTime = "ComputeTime"
        case createdAt = "CreatedAt"
        case createdByIamUser = "CreatedByIamUser"
        case evaluationDataSourceId = "EvaluationDataSourceId"
        case evaluationId = "EvaluationId"
        case finishedAt = "FinishedAt"
        case inputDataLocationS3 = "InputDataLocationS3"
        case lastUpdatedAt = "LastUpdatedAt"
        case mLModelId = "MLModelId"
        case message = "Message"
        case name = "Name"
        case performanceMetrics = "PerformanceMetrics"
        case startedAt = "StartedAt"
        case status = "Status"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let computeTime = computeTime {
            try encodeContainer.encode(computeTime, forKey: .computeTime)
        }
        if let createdAt = createdAt {
            try encodeContainer.encode(createdAt.timeIntervalSince1970, forKey: .createdAt)
        }
        if let createdByIamUser = createdByIamUser {
            try encodeContainer.encode(createdByIamUser, forKey: .createdByIamUser)
        }
        if let evaluationDataSourceId = evaluationDataSourceId {
            try encodeContainer.encode(evaluationDataSourceId, forKey: .evaluationDataSourceId)
        }
        if let evaluationId = evaluationId {
            try encodeContainer.encode(evaluationId, forKey: .evaluationId)
        }
        if let finishedAt = finishedAt {
            try encodeContainer.encode(finishedAt.timeIntervalSince1970, forKey: .finishedAt)
        }
        if let inputDataLocationS3 = inputDataLocationS3 {
            try encodeContainer.encode(inputDataLocationS3, forKey: .inputDataLocationS3)
        }
        if let lastUpdatedAt = lastUpdatedAt {
            try encodeContainer.encode(lastUpdatedAt.timeIntervalSince1970, forKey: .lastUpdatedAt)
        }
        if let mLModelId = mLModelId {
            try encodeContainer.encode(mLModelId, forKey: .mLModelId)
        }
        if let message = message {
            try encodeContainer.encode(message, forKey: .message)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let performanceMetrics = performanceMetrics {
            try encodeContainer.encode(performanceMetrics, forKey: .performanceMetrics)
        }
        if let startedAt = startedAt {
            try encodeContainer.encode(startedAt.timeIntervalSince1970, forKey: .startedAt)
        }
        if let status = status {
            try encodeContainer.encode(status.rawValue, forKey: .status)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let evaluationIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .evaluationId)
        evaluationId = evaluationIdDecoded
        let mLModelIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .mLModelId)
        mLModelId = mLModelIdDecoded
        let evaluationDataSourceIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .evaluationDataSourceId)
        evaluationDataSourceId = evaluationDataSourceIdDecoded
        let inputDataLocationS3Decoded = try containerValues.decodeIfPresent(String.self, forKey: .inputDataLocationS3)
        inputDataLocationS3 = inputDataLocationS3Decoded
        let createdByIamUserDecoded = try containerValues.decodeIfPresent(String.self, forKey: .createdByIamUser)
        createdByIamUser = createdByIamUserDecoded
        let createdAtDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .createdAt)
        createdAt = createdAtDecoded
        let lastUpdatedAtDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastUpdatedAt)
        lastUpdatedAt = lastUpdatedAtDecoded
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let statusDecoded = try containerValues.decodeIfPresent(EntityStatus.self, forKey: .status)
        status = statusDecoded
        let performanceMetricsDecoded = try containerValues.decodeIfPresent(PerformanceMetrics.self, forKey: .performanceMetrics)
        performanceMetrics = performanceMetricsDecoded
        let messageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .message)
        message = messageDecoded
        let computeTimeDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .computeTime)
        computeTime = computeTimeDecoded
        let finishedAtDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .finishedAt)
        finishedAt = finishedAtDecoded
        let startedAtDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .startedAt)
        startedAt = startedAtDecoded
    }
}