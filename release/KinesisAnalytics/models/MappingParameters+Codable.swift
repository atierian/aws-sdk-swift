// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension MappingParameters: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case cSVMappingParameters = "CSVMappingParameters"
        case jSONMappingParameters = "JSONMappingParameters"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let cSVMappingParameters = cSVMappingParameters {
            try encodeContainer.encode(cSVMappingParameters, forKey: .cSVMappingParameters)
        }
        if let jSONMappingParameters = jSONMappingParameters {
            try encodeContainer.encode(jSONMappingParameters, forKey: .jSONMappingParameters)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let jSONMappingParametersDecoded = try containerValues.decodeIfPresent(JSONMappingParameters.self, forKey: .jSONMappingParameters)
        jSONMappingParameters = jSONMappingParametersDecoded
        let cSVMappingParametersDecoded = try containerValues.decodeIfPresent(CSVMappingParameters.self, forKey: .cSVMappingParameters)
        cSVMappingParameters = cSVMappingParametersDecoded
    }
}