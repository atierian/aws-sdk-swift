// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateInfrastructureConfigurationInputBody: Equatable {
    public let infrastructureConfigurationArn: String?
    public let description: String?
    public let instanceTypes: [String]?
    public let instanceProfileName: String?
    public let securityGroupIds: [String]?
    public let subnetId: String?
    public let logging: Logging?
    public let keyPair: String?
    public let terminateInstanceOnFailure: Bool?
    public let snsTopicArn: String?
    public let clientToken: String?
    public let resourceTags: [String:String]?
}

extension UpdateInfrastructureConfigurationInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case clientToken
        case description
        case infrastructureConfigurationArn
        case instanceProfileName
        case instanceTypes
        case keyPair
        case logging
        case resourceTags
        case securityGroupIds
        case snsTopicArn
        case subnetId
        case terminateInstanceOnFailure
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let infrastructureConfigurationArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .infrastructureConfigurationArn)
        infrastructureConfigurationArn = infrastructureConfigurationArnDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let instanceTypesContainer = try containerValues.decodeIfPresent([String?].self, forKey: .instanceTypes)
        var instanceTypesDecoded0:[String]? = nil
        if let instanceTypesContainer = instanceTypesContainer {
            instanceTypesDecoded0 = [String]()
            for string0 in instanceTypesContainer {
                if let string0 = string0 {
                    instanceTypesDecoded0?.append(string0)
                }
            }
        }
        instanceTypes = instanceTypesDecoded0
        let instanceProfileNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .instanceProfileName)
        instanceProfileName = instanceProfileNameDecoded
        let securityGroupIdsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .securityGroupIds)
        var securityGroupIdsDecoded0:[String]? = nil
        if let securityGroupIdsContainer = securityGroupIdsContainer {
            securityGroupIdsDecoded0 = [String]()
            for string0 in securityGroupIdsContainer {
                if let string0 = string0 {
                    securityGroupIdsDecoded0?.append(string0)
                }
            }
        }
        securityGroupIds = securityGroupIdsDecoded0
        let subnetIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .subnetId)
        subnetId = subnetIdDecoded
        let loggingDecoded = try containerValues.decodeIfPresent(Logging.self, forKey: .logging)
        logging = loggingDecoded
        let keyPairDecoded = try containerValues.decodeIfPresent(String.self, forKey: .keyPair)
        keyPair = keyPairDecoded
        let terminateInstanceOnFailureDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .terminateInstanceOnFailure)
        terminateInstanceOnFailure = terminateInstanceOnFailureDecoded
        let snsTopicArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .snsTopicArn)
        snsTopicArn = snsTopicArnDecoded
        let clientTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .clientToken)
        clientToken = clientTokenDecoded
        let resourceTagsContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .resourceTags)
        var resourceTagsDecoded0: [String:String]? = nil
        if let resourceTagsContainer = resourceTagsContainer {
            resourceTagsDecoded0 = [String:String]()
            for (key0, tagvalue0) in resourceTagsContainer {
                if let tagvalue0 = tagvalue0 {
                    resourceTagsDecoded0?[key0] = tagvalue0
                }
            }
        }
        resourceTags = resourceTagsDecoded0
    }
}