// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ConformancePackRuleCompliance: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case complianceType = "ComplianceType"
        case configRuleName = "ConfigRuleName"
        case controls = "Controls"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let complianceType = complianceType {
            try encodeContainer.encode(complianceType.rawValue, forKey: .complianceType)
        }
        if let configRuleName = configRuleName {
            try encodeContainer.encode(configRuleName, forKey: .configRuleName)
        }
        if let controls = controls {
            var controlsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .controls)
            for controlslist0 in controls {
                try controlsContainer.encode(controlslist0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let configRuleNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .configRuleName)
        configRuleName = configRuleNameDecoded
        let complianceTypeDecoded = try containerValues.decodeIfPresent(ConformancePackComplianceType.self, forKey: .complianceType)
        complianceType = complianceTypeDecoded
        let controlsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .controls)
        var controlsDecoded0:[String]? = nil
        if let controlsContainer = controlsContainer {
            controlsDecoded0 = [String]()
            for string0 in controlsContainer {
                if let string0 = string0 {
                    controlsDecoded0?.append(string0)
                }
            }
        }
        controls = controlsDecoded0
    }
}