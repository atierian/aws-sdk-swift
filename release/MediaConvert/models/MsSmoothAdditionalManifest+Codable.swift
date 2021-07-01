// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension MsSmoothAdditionalManifest: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case manifestNameModifier = "manifestNameModifier"
        case selectedOutputs = "selectedOutputs"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let manifestNameModifier = manifestNameModifier {
            try encodeContainer.encode(manifestNameModifier, forKey: .manifestNameModifier)
        }
        if let selectedOutputs = selectedOutputs {
            var selectedOutputsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .selectedOutputs)
            for __listof__stringmin10 in selectedOutputs {
                try selectedOutputsContainer.encode(__listof__stringmin10)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let manifestNameModifierDecoded = try containerValues.decodeIfPresent(String.self, forKey: .manifestNameModifier)
        manifestNameModifier = manifestNameModifierDecoded
        let selectedOutputsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .selectedOutputs)
        var selectedOutputsDecoded0:[String]? = nil
        if let selectedOutputsContainer = selectedOutputsContainer {
            selectedOutputsDecoded0 = [String]()
            for string0 in selectedOutputsContainer {
                if let string0 = string0 {
                    selectedOutputsDecoded0?.append(string0)
                }
            }
        }
        selectedOutputs = selectedOutputsDecoded0
    }
}