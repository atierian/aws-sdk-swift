// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct StartTaskContactInputBody: Equatable {
    public let instanceId: String?
    public let previousContactId: String?
    public let contactFlowId: String?
    public let attributes: [String:String]?
    public let name: String?
    public let references: [String:Reference]?
    public let description: String?
    public let clientToken: String?
}

extension StartTaskContactInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case attributes = "Attributes"
        case clientToken = "ClientToken"
        case contactFlowId = "ContactFlowId"
        case description = "Description"
        case instanceId = "InstanceId"
        case name = "Name"
        case previousContactId = "PreviousContactId"
        case references = "References"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let instanceIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .instanceId)
        instanceId = instanceIdDecoded
        let previousContactIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .previousContactId)
        previousContactId = previousContactIdDecoded
        let contactFlowIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .contactFlowId)
        contactFlowId = contactFlowIdDecoded
        let attributesContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .attributes)
        var attributesDecoded0: [String:String]? = nil
        if let attributesContainer = attributesContainer {
            attributesDecoded0 = [String:String]()
            for (key0, attributevalue0) in attributesContainer {
                if let attributevalue0 = attributevalue0 {
                    attributesDecoded0?[key0] = attributevalue0
                }
            }
        }
        attributes = attributesDecoded0
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let referencesContainer = try containerValues.decodeIfPresent([String: Reference?].self, forKey: .references)
        var referencesDecoded0: [String:Reference]? = nil
        if let referencesContainer = referencesContainer {
            referencesDecoded0 = [String:Reference]()
            for (key0, reference0) in referencesContainer {
                if let reference0 = reference0 {
                    referencesDecoded0?[key0] = reference0
                }
            }
        }
        references = referencesDecoded0
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let clientTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .clientToken)
        clientToken = clientTokenDecoded
    }
}