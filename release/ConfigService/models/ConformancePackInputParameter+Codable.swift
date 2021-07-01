// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ConformancePackInputParameter: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case parameterName = "ParameterName"
        case parameterValue = "ParameterValue"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let parameterName = parameterName {
            try encodeContainer.encode(parameterName, forKey: .parameterName)
        }
        if let parameterValue = parameterValue {
            try encodeContainer.encode(parameterValue, forKey: .parameterValue)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let parameterNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .parameterName)
        parameterName = parameterNameDecoded
        let parameterValueDecoded = try containerValues.decodeIfPresent(String.self, forKey: .parameterValue)
        parameterValue = parameterValueDecoded
    }
}