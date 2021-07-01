// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension IntentSummary: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case checkpointLabel
        case confirmationStatus
        case dialogActionType
        case fulfillmentState
        case intentName
        case slotToElicit
        case slots
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let checkpointLabel = checkpointLabel {
            try encodeContainer.encode(checkpointLabel, forKey: .checkpointLabel)
        }
        if let confirmationStatus = confirmationStatus {
            try encodeContainer.encode(confirmationStatus.rawValue, forKey: .confirmationStatus)
        }
        if let dialogActionType = dialogActionType {
            try encodeContainer.encode(dialogActionType.rawValue, forKey: .dialogActionType)
        }
        if let fulfillmentState = fulfillmentState {
            try encodeContainer.encode(fulfillmentState.rawValue, forKey: .fulfillmentState)
        }
        if let intentName = intentName {
            try encodeContainer.encode(intentName, forKey: .intentName)
        }
        if let slotToElicit = slotToElicit {
            try encodeContainer.encode(slotToElicit, forKey: .slotToElicit)
        }
        if let slots = slots {
            var slotsContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .slots)
            for (dictKey0, stringmap0) in slots {
                try slotsContainer.encode(stringmap0, forKey: Key(stringValue: dictKey0))
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let intentNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .intentName)
        intentName = intentNameDecoded
        let checkpointLabelDecoded = try containerValues.decodeIfPresent(String.self, forKey: .checkpointLabel)
        checkpointLabel = checkpointLabelDecoded
        let slotsContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .slots)
        var slotsDecoded0: [String:String]? = nil
        if let slotsContainer = slotsContainer {
            slotsDecoded0 = [String:String]()
            for (key0, string0) in slotsContainer {
                if let string0 = string0 {
                    slotsDecoded0?[key0] = string0
                }
            }
        }
        slots = slotsDecoded0
        let confirmationStatusDecoded = try containerValues.decodeIfPresent(ConfirmationStatus.self, forKey: .confirmationStatus)
        confirmationStatus = confirmationStatusDecoded
        let dialogActionTypeDecoded = try containerValues.decodeIfPresent(DialogActionType.self, forKey: .dialogActionType)
        dialogActionType = dialogActionTypeDecoded
        let fulfillmentStateDecoded = try containerValues.decodeIfPresent(FulfillmentState.self, forKey: .fulfillmentState)
        fulfillmentState = fulfillmentStateDecoded
        let slotToElicitDecoded = try containerValues.decodeIfPresent(String.self, forKey: .slotToElicit)
        slotToElicit = slotToElicitDecoded
    }
}