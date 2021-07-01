// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CostCategoryValues: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case key = "Key"
        case matchOptions = "MatchOptions"
        case values = "Values"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let key = key {
            try encodeContainer.encode(key, forKey: .key)
        }
        if let matchOptions = matchOptions {
            var matchOptionsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .matchOptions)
            for matchoptions0 in matchOptions {
                try matchOptionsContainer.encode(matchoptions0.rawValue)
            }
        }
        if let values = values {
            var valuesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .values)
            for values0 in values {
                try valuesContainer.encode(values0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let keyDecoded = try containerValues.decodeIfPresent(String.self, forKey: .key)
        key = keyDecoded
        let valuesContainer = try containerValues.decodeIfPresent([String?].self, forKey: .values)
        var valuesDecoded0:[String]? = nil
        if let valuesContainer = valuesContainer {
            valuesDecoded0 = [String]()
            for string0 in valuesContainer {
                if let string0 = string0 {
                    valuesDecoded0?.append(string0)
                }
            }
        }
        values = valuesDecoded0
        let matchOptionsContainer = try containerValues.decodeIfPresent([MatchOption?].self, forKey: .matchOptions)
        var matchOptionsDecoded0:[MatchOption]? = nil
        if let matchOptionsContainer = matchOptionsContainer {
            matchOptionsDecoded0 = [MatchOption]()
            for string0 in matchOptionsContainer {
                if let string0 = string0 {
                    matchOptionsDecoded0?.append(string0)
                }
            }
        }
        matchOptions = matchOptionsDecoded0
    }
}