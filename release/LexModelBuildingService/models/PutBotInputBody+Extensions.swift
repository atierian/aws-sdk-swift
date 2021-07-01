// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct PutBotInputBody: Equatable {
    public let description: String?
    public let intents: [Intent]?
    public let enableModelImprovements: Bool?
    public let nluIntentConfidenceThreshold: Double?
    public let clarificationPrompt: Prompt?
    public let abortStatement: Statement?
    public let idleSessionTTLInSeconds: Int?
    public let voiceId: String?
    public let checksum: String?
    public let processBehavior: ProcessBehavior?
    public let locale: Locale?
    public let childDirected: Bool?
    public let detectSentiment: Bool?
    public let createVersion: Bool?
    public let tags: [Tag]?
}

extension PutBotInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case abortStatement
        case checksum
        case childDirected
        case clarificationPrompt
        case createVersion
        case description
        case detectSentiment
        case enableModelImprovements
        case idleSessionTTLInSeconds
        case intents
        case locale
        case nluIntentConfidenceThreshold
        case processBehavior
        case tags
        case voiceId
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let intentsContainer = try containerValues.decodeIfPresent([Intent?].self, forKey: .intents)
        var intentsDecoded0:[Intent]? = nil
        if let intentsContainer = intentsContainer {
            intentsDecoded0 = [Intent]()
            for structure0 in intentsContainer {
                if let structure0 = structure0 {
                    intentsDecoded0?.append(structure0)
                }
            }
        }
        intents = intentsDecoded0
        let enableModelImprovementsDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .enableModelImprovements)
        enableModelImprovements = enableModelImprovementsDecoded
        let nluIntentConfidenceThresholdDecoded = try containerValues.decodeIfPresent(Double.self, forKey: .nluIntentConfidenceThreshold)
        nluIntentConfidenceThreshold = nluIntentConfidenceThresholdDecoded
        let clarificationPromptDecoded = try containerValues.decodeIfPresent(Prompt.self, forKey: .clarificationPrompt)
        clarificationPrompt = clarificationPromptDecoded
        let abortStatementDecoded = try containerValues.decodeIfPresent(Statement.self, forKey: .abortStatement)
        abortStatement = abortStatementDecoded
        let idleSessionTTLInSecondsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .idleSessionTTLInSeconds)
        idleSessionTTLInSeconds = idleSessionTTLInSecondsDecoded
        let voiceIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .voiceId)
        voiceId = voiceIdDecoded
        let checksumDecoded = try containerValues.decodeIfPresent(String.self, forKey: .checksum)
        checksum = checksumDecoded
        let processBehaviorDecoded = try containerValues.decodeIfPresent(ProcessBehavior.self, forKey: .processBehavior)
        processBehavior = processBehaviorDecoded
        let localeDecoded = try containerValues.decodeIfPresent(Locale.self, forKey: .locale)
        locale = localeDecoded
        let childDirectedDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .childDirected)
        childDirected = childDirectedDecoded
        let detectSentimentDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .detectSentiment)
        detectSentiment = detectSentimentDecoded
        let createVersionDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .createVersion)
        createVersion = createVersionDecoded
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
    }
}