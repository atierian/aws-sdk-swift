// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CustomMessageActivity: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case deliveryUri = "DeliveryUri"
        case endpointTypes = "EndpointTypes"
        case messageConfig = "MessageConfig"
        case nextActivity = "NextActivity"
        case templateName = "TemplateName"
        case templateVersion = "TemplateVersion"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let deliveryUri = deliveryUri {
            try encodeContainer.encode(deliveryUri, forKey: .deliveryUri)
        }
        if let endpointTypes = endpointTypes {
            var endpointTypesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .endpointTypes)
            for listof__endpointtypeselement0 in endpointTypes {
                try endpointTypesContainer.encode(listof__endpointtypeselement0.rawValue)
            }
        }
        if let messageConfig = messageConfig {
            try encodeContainer.encode(messageConfig, forKey: .messageConfig)
        }
        if let nextActivity = nextActivity {
            try encodeContainer.encode(nextActivity, forKey: .nextActivity)
        }
        if let templateName = templateName {
            try encodeContainer.encode(templateName, forKey: .templateName)
        }
        if let templateVersion = templateVersion {
            try encodeContainer.encode(templateVersion, forKey: .templateVersion)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let deliveryUriDecoded = try containerValues.decodeIfPresent(String.self, forKey: .deliveryUri)
        deliveryUri = deliveryUriDecoded
        let endpointTypesContainer = try containerValues.decodeIfPresent([__EndpointTypesElement?].self, forKey: .endpointTypes)
        var endpointTypesDecoded0:[__EndpointTypesElement]? = nil
        if let endpointTypesContainer = endpointTypesContainer {
            endpointTypesDecoded0 = [__EndpointTypesElement]()
            for string0 in endpointTypesContainer {
                if let string0 = string0 {
                    endpointTypesDecoded0?.append(string0)
                }
            }
        }
        endpointTypes = endpointTypesDecoded0
        let messageConfigDecoded = try containerValues.decodeIfPresent(JourneyCustomMessage.self, forKey: .messageConfig)
        messageConfig = messageConfigDecoded
        let nextActivityDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextActivity)
        nextActivity = nextActivityDecoded
        let templateNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .templateName)
        templateName = templateNameDecoded
        let templateVersionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .templateVersion)
        templateVersion = templateVersionDecoded
    }
}