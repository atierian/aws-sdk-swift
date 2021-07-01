// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeSecretOutputResponseBody: Equatable {
    public let aRN: String?
    public let name: String?
    public let description: String?
    public let kmsKeyId: String?
    public let rotationEnabled: Bool
    public let rotationLambdaARN: String?
    public let rotationRules: RotationRulesType?
    public let lastRotatedDate: Date?
    public let lastChangedDate: Date?
    public let lastAccessedDate: Date?
    public let deletedDate: Date?
    public let tags: [Tag]?
    public let versionIdsToStages: [String:[String]]?
    public let owningService: String?
    public let createdDate: Date?
    public let primaryRegion: String?
    public let replicationStatus: [ReplicationStatusType]?
}

extension DescribeSecretOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case aRN = "ARN"
        case createdDate = "CreatedDate"
        case deletedDate = "DeletedDate"
        case description = "Description"
        case kmsKeyId = "KmsKeyId"
        case lastAccessedDate = "LastAccessedDate"
        case lastChangedDate = "LastChangedDate"
        case lastRotatedDate = "LastRotatedDate"
        case name = "Name"
        case owningService = "OwningService"
        case primaryRegion = "PrimaryRegion"
        case replicationStatus = "ReplicationStatus"
        case rotationEnabled = "RotationEnabled"
        case rotationLambdaARN = "RotationLambdaARN"
        case rotationRules = "RotationRules"
        case tags = "Tags"
        case versionIdsToStages = "VersionIdsToStages"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let aRNDecoded = try containerValues.decodeIfPresent(String.self, forKey: .aRN)
        aRN = aRNDecoded
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let kmsKeyIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .kmsKeyId)
        kmsKeyId = kmsKeyIdDecoded
        let rotationEnabledDecoded = try containerValues.decode(Bool.self, forKey: .rotationEnabled)
        rotationEnabled = rotationEnabledDecoded
        let rotationLambdaARNDecoded = try containerValues.decodeIfPresent(String.self, forKey: .rotationLambdaARN)
        rotationLambdaARN = rotationLambdaARNDecoded
        let rotationRulesDecoded = try containerValues.decodeIfPresent(RotationRulesType.self, forKey: .rotationRules)
        rotationRules = rotationRulesDecoded
        let lastRotatedDateDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastRotatedDate)
        lastRotatedDate = lastRotatedDateDecoded
        let lastChangedDateDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastChangedDate)
        lastChangedDate = lastChangedDateDecoded
        let lastAccessedDateDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastAccessedDate)
        lastAccessedDate = lastAccessedDateDecoded
        let deletedDateDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .deletedDate)
        deletedDate = deletedDateDecoded
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
        let versionIdsToStagesContainer = try containerValues.decodeIfPresent([String: [String?]?].self, forKey: .versionIdsToStages)
        var versionIdsToStagesDecoded0: [String:[String]]? = nil
        if let versionIdsToStagesContainer = versionIdsToStagesContainer {
            versionIdsToStagesDecoded0 = [String:[String]]()
            for (key0, secretversionstagestype0) in versionIdsToStagesContainer {
                var secretversionstagestype0Decoded0: [String]? = nil
                if let secretversionstagestype0 = secretversionstagestype0 {
                    secretversionstagestype0Decoded0 = [String]()
                    for string1 in secretversionstagestype0 {
                        if let string1 = string1 {
                            secretversionstagestype0Decoded0?.append(string1)
                        }
                    }
                }
                versionIdsToStagesDecoded0?[key0] = secretversionstagestype0Decoded0
            }
        }
        versionIdsToStages = versionIdsToStagesDecoded0
        let owningServiceDecoded = try containerValues.decodeIfPresent(String.self, forKey: .owningService)
        owningService = owningServiceDecoded
        let createdDateDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .createdDate)
        createdDate = createdDateDecoded
        let primaryRegionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .primaryRegion)
        primaryRegion = primaryRegionDecoded
        let replicationStatusContainer = try containerValues.decodeIfPresent([ReplicationStatusType?].self, forKey: .replicationStatus)
        var replicationStatusDecoded0:[ReplicationStatusType]? = nil
        if let replicationStatusContainer = replicationStatusContainer {
            replicationStatusDecoded0 = [ReplicationStatusType]()
            for structure0 in replicationStatusContainer {
                if let structure0 = structure0 {
                    replicationStatusDecoded0?.append(structure0)
                }
            }
        }
        replicationStatus = replicationStatusDecoded0
    }
}