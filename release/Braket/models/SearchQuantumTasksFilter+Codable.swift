// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SearchQuantumTasksFilter: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case name
        case `operator` = "operator"
        case values
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let `operator` = `operator` {
            try encodeContainer.encode(`operator`.rawValue, forKey: .`operator`)
        }
        if let values = values {
            var valuesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .values)
            for string256list0 in values {
                try valuesContainer.encode(string256list0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
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
        let operatorDecoded = try containerValues.decodeIfPresent(SearchQuantumTasksFilterOperator.self, forKey: .operator)
        `operator` = operatorDecoded
    }
}