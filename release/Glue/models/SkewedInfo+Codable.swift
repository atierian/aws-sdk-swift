// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SkewedInfo: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case skewedColumnNames = "SkewedColumnNames"
        case skewedColumnValueLocationMaps = "SkewedColumnValueLocationMaps"
        case skewedColumnValues = "SkewedColumnValues"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let skewedColumnNames = skewedColumnNames {
            var skewedColumnNamesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .skewedColumnNames)
            for namestringlist0 in skewedColumnNames {
                try skewedColumnNamesContainer.encode(namestringlist0)
            }
        }
        if let skewedColumnValueLocationMaps = skewedColumnValueLocationMaps {
            var skewedColumnValueLocationMapsContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .skewedColumnValueLocationMaps)
            for (dictKey0, locationmap0) in skewedColumnValueLocationMaps {
                try skewedColumnValueLocationMapsContainer.encode(locationmap0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let skewedColumnValues = skewedColumnValues {
            var skewedColumnValuesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .skewedColumnValues)
            for columnvaluestringlist0 in skewedColumnValues {
                try skewedColumnValuesContainer.encode(columnvaluestringlist0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let skewedColumnNamesContainer = try containerValues.decodeIfPresent([String?].self, forKey: .skewedColumnNames)
        var skewedColumnNamesDecoded0:[String]? = nil
        if let skewedColumnNamesContainer = skewedColumnNamesContainer {
            skewedColumnNamesDecoded0 = [String]()
            for string0 in skewedColumnNamesContainer {
                if let string0 = string0 {
                    skewedColumnNamesDecoded0?.append(string0)
                }
            }
        }
        skewedColumnNames = skewedColumnNamesDecoded0
        let skewedColumnValuesContainer = try containerValues.decodeIfPresent([String?].self, forKey: .skewedColumnValues)
        var skewedColumnValuesDecoded0:[String]? = nil
        if let skewedColumnValuesContainer = skewedColumnValuesContainer {
            skewedColumnValuesDecoded0 = [String]()
            for string0 in skewedColumnValuesContainer {
                if let string0 = string0 {
                    skewedColumnValuesDecoded0?.append(string0)
                }
            }
        }
        skewedColumnValues = skewedColumnValuesDecoded0
        let skewedColumnValueLocationMapsContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .skewedColumnValueLocationMaps)
        var skewedColumnValueLocationMapsDecoded0: [String:String]? = nil
        if let skewedColumnValueLocationMapsContainer = skewedColumnValueLocationMapsContainer {
            skewedColumnValueLocationMapsDecoded0 = [String:String]()
            for (key0, columnvaluesstring0) in skewedColumnValueLocationMapsContainer {
                if let columnvaluesstring0 = columnvaluesstring0 {
                    skewedColumnValueLocationMapsDecoded0?[key0] = columnvaluesstring0
                }
            }
        }
        skewedColumnValueLocationMaps = skewedColumnValueLocationMapsDecoded0
    }
}