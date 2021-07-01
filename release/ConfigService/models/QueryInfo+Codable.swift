// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension QueryInfo: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case selectFields = "SelectFields"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let selectFields = selectFields {
            var selectFieldsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .selectFields)
            for fieldinfolist0 in selectFields {
                try selectFieldsContainer.encode(fieldinfolist0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let selectFieldsContainer = try containerValues.decodeIfPresent([FieldInfo?].self, forKey: .selectFields)
        var selectFieldsDecoded0:[FieldInfo]? = nil
        if let selectFieldsContainer = selectFieldsContainer {
            selectFieldsDecoded0 = [FieldInfo]()
            for structure0 in selectFieldsContainer {
                if let structure0 = structure0 {
                    selectFieldsDecoded0?.append(structure0)
                }
            }
        }
        selectFields = selectFieldsDecoded0
    }
}