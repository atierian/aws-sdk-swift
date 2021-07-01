// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension IntegrationResponse: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case contentHandlingStrategy = "contentHandlingStrategy"
        case integrationResponseId = "integrationResponseId"
        case integrationResponseKey = "integrationResponseKey"
        case responseParameters = "responseParameters"
        case responseTemplates = "responseTemplates"
        case templateSelectionExpression = "templateSelectionExpression"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let contentHandlingStrategy = contentHandlingStrategy {
            try encodeContainer.encode(contentHandlingStrategy.rawValue, forKey: .contentHandlingStrategy)
        }
        if let integrationResponseId = integrationResponseId {
            try encodeContainer.encode(integrationResponseId, forKey: .integrationResponseId)
        }
        if let integrationResponseKey = integrationResponseKey {
            try encodeContainer.encode(integrationResponseKey, forKey: .integrationResponseKey)
        }
        if let responseParameters = responseParameters {
            var responseParametersContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .responseParameters)
            for (dictKey0, integrationparameters0) in responseParameters {
                try responseParametersContainer.encode(integrationparameters0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let responseTemplates = responseTemplates {
            var responseTemplatesContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .responseTemplates)
            for (dictKey0, templatemap0) in responseTemplates {
                try responseTemplatesContainer.encode(templatemap0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let templateSelectionExpression = templateSelectionExpression {
            try encodeContainer.encode(templateSelectionExpression, forKey: .templateSelectionExpression)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let contentHandlingStrategyDecoded = try containerValues.decodeIfPresent(ContentHandlingStrategy.self, forKey: .contentHandlingStrategy)
        contentHandlingStrategy = contentHandlingStrategyDecoded
        let integrationResponseIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .integrationResponseId)
        integrationResponseId = integrationResponseIdDecoded
        let integrationResponseKeyDecoded = try containerValues.decodeIfPresent(String.self, forKey: .integrationResponseKey)
        integrationResponseKey = integrationResponseKeyDecoded
        let responseParametersContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .responseParameters)
        var responseParametersDecoded0: [String:String]? = nil
        if let responseParametersContainer = responseParametersContainer {
            responseParametersDecoded0 = [String:String]()
            for (key0, stringwithlengthbetween1and5120) in responseParametersContainer {
                if let stringwithlengthbetween1and5120 = stringwithlengthbetween1and5120 {
                    responseParametersDecoded0?[key0] = stringwithlengthbetween1and5120
                }
            }
        }
        responseParameters = responseParametersDecoded0
        let responseTemplatesContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .responseTemplates)
        var responseTemplatesDecoded0: [String:String]? = nil
        if let responseTemplatesContainer = responseTemplatesContainer {
            responseTemplatesDecoded0 = [String:String]()
            for (key0, stringwithlengthbetween0and32k0) in responseTemplatesContainer {
                if let stringwithlengthbetween0and32k0 = stringwithlengthbetween0and32k0 {
                    responseTemplatesDecoded0?[key0] = stringwithlengthbetween0and32k0
                }
            }
        }
        responseTemplates = responseTemplatesDecoded0
        let templateSelectionExpressionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .templateSelectionExpression)
        templateSelectionExpression = templateSelectionExpressionDecoded
    }
}