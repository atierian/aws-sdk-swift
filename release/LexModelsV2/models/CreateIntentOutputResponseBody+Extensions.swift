// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateIntentOutputResponseBody: Equatable {
    public let intentId: String?
    public let intentName: String?
    public let description: String?
    public let parentIntentSignature: String?
    public let sampleUtterances: [SampleUtterance]?
    public let dialogCodeHook: DialogCodeHookSettings?
    public let fulfillmentCodeHook: FulfillmentCodeHookSettings?
    public let intentConfirmationSetting: IntentConfirmationSetting?
    public let intentClosingSetting: IntentClosingSetting?
    public let inputContexts: [InputContext]?
    public let outputContexts: [OutputContext]?
    public let kendraConfiguration: KendraConfiguration?
    public let botId: String?
    public let botVersion: String?
    public let localeId: String?
    public let creationDateTime: Date?
}

extension CreateIntentOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case botId
        case botVersion
        case creationDateTime
        case description
        case dialogCodeHook
        case fulfillmentCodeHook
        case inputContexts
        case intentClosingSetting
        case intentConfirmationSetting
        case intentId
        case intentName
        case kendraConfiguration
        case localeId
        case outputContexts
        case parentIntentSignature
        case sampleUtterances
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let intentIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .intentId)
        intentId = intentIdDecoded
        let intentNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .intentName)
        intentName = intentNameDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let parentIntentSignatureDecoded = try containerValues.decodeIfPresent(String.self, forKey: .parentIntentSignature)
        parentIntentSignature = parentIntentSignatureDecoded
        let sampleUtterancesContainer = try containerValues.decodeIfPresent([SampleUtterance?].self, forKey: .sampleUtterances)
        var sampleUtterancesDecoded0:[SampleUtterance]? = nil
        if let sampleUtterancesContainer = sampleUtterancesContainer {
            sampleUtterancesDecoded0 = [SampleUtterance]()
            for structure0 in sampleUtterancesContainer {
                if let structure0 = structure0 {
                    sampleUtterancesDecoded0?.append(structure0)
                }
            }
        }
        sampleUtterances = sampleUtterancesDecoded0
        let dialogCodeHookDecoded = try containerValues.decodeIfPresent(DialogCodeHookSettings.self, forKey: .dialogCodeHook)
        dialogCodeHook = dialogCodeHookDecoded
        let fulfillmentCodeHookDecoded = try containerValues.decodeIfPresent(FulfillmentCodeHookSettings.self, forKey: .fulfillmentCodeHook)
        fulfillmentCodeHook = fulfillmentCodeHookDecoded
        let intentConfirmationSettingDecoded = try containerValues.decodeIfPresent(IntentConfirmationSetting.self, forKey: .intentConfirmationSetting)
        intentConfirmationSetting = intentConfirmationSettingDecoded
        let intentClosingSettingDecoded = try containerValues.decodeIfPresent(IntentClosingSetting.self, forKey: .intentClosingSetting)
        intentClosingSetting = intentClosingSettingDecoded
        let inputContextsContainer = try containerValues.decodeIfPresent([InputContext?].self, forKey: .inputContexts)
        var inputContextsDecoded0:[InputContext]? = nil
        if let inputContextsContainer = inputContextsContainer {
            inputContextsDecoded0 = [InputContext]()
            for structure0 in inputContextsContainer {
                if let structure0 = structure0 {
                    inputContextsDecoded0?.append(structure0)
                }
            }
        }
        inputContexts = inputContextsDecoded0
        let outputContextsContainer = try containerValues.decodeIfPresent([OutputContext?].self, forKey: .outputContexts)
        var outputContextsDecoded0:[OutputContext]? = nil
        if let outputContextsContainer = outputContextsContainer {
            outputContextsDecoded0 = [OutputContext]()
            for structure0 in outputContextsContainer {
                if let structure0 = structure0 {
                    outputContextsDecoded0?.append(structure0)
                }
            }
        }
        outputContexts = outputContextsDecoded0
        let kendraConfigurationDecoded = try containerValues.decodeIfPresent(KendraConfiguration.self, forKey: .kendraConfiguration)
        kendraConfiguration = kendraConfigurationDecoded
        let botIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .botId)
        botId = botIdDecoded
        let botVersionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .botVersion)
        botVersion = botVersionDecoded
        let localeIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .localeId)
        localeId = localeIdDecoded
        let creationDateTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .creationDateTime)
        creationDateTime = creationDateTimeDecoded
    }
}