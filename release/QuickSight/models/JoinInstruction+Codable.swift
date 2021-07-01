// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension JoinInstruction: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case leftJoinKeyProperties = "LeftJoinKeyProperties"
        case leftOperand = "LeftOperand"
        case onClause = "OnClause"
        case rightJoinKeyProperties = "RightJoinKeyProperties"
        case rightOperand = "RightOperand"
        case type = "Type"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let leftJoinKeyProperties = leftJoinKeyProperties {
            try encodeContainer.encode(leftJoinKeyProperties, forKey: .leftJoinKeyProperties)
        }
        if let leftOperand = leftOperand {
            try encodeContainer.encode(leftOperand, forKey: .leftOperand)
        }
        if let onClause = onClause {
            try encodeContainer.encode(onClause, forKey: .onClause)
        }
        if let rightJoinKeyProperties = rightJoinKeyProperties {
            try encodeContainer.encode(rightJoinKeyProperties, forKey: .rightJoinKeyProperties)
        }
        if let rightOperand = rightOperand {
            try encodeContainer.encode(rightOperand, forKey: .rightOperand)
        }
        if let type = type {
            try encodeContainer.encode(type.rawValue, forKey: .type)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let leftOperandDecoded = try containerValues.decodeIfPresent(String.self, forKey: .leftOperand)
        leftOperand = leftOperandDecoded
        let rightOperandDecoded = try containerValues.decodeIfPresent(String.self, forKey: .rightOperand)
        rightOperand = rightOperandDecoded
        let leftJoinKeyPropertiesDecoded = try containerValues.decodeIfPresent(JoinKeyProperties.self, forKey: .leftJoinKeyProperties)
        leftJoinKeyProperties = leftJoinKeyPropertiesDecoded
        let rightJoinKeyPropertiesDecoded = try containerValues.decodeIfPresent(JoinKeyProperties.self, forKey: .rightJoinKeyProperties)
        rightJoinKeyProperties = rightJoinKeyPropertiesDecoded
        let typeDecoded = try containerValues.decodeIfPresent(JoinType.self, forKey: .type)
        type = typeDecoded
        let onClauseDecoded = try containerValues.decodeIfPresent(String.self, forKey: .onClause)
        onClause = onClauseDecoded
    }
}