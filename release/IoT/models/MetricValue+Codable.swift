// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension MetricValue: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case cidrs
        case count
        case number
        case numbers
        case ports
        case strings
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let cidrs = cidrs {
            var cidrsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .cidrs)
            for cidrs0 in cidrs {
                try cidrsContainer.encode(cidrs0)
            }
        }
        if let count = count {
            try encodeContainer.encode(count, forKey: .count)
        }
        if let number = number {
            try encodeContainer.encode(number, forKey: .number)
        }
        if let numbers = numbers {
            var numbersContainer = encodeContainer.nestedUnkeyedContainer(forKey: .numbers)
            for numberlist0 in numbers {
                try numbersContainer.encode(numberlist0)
            }
        }
        if let ports = ports {
            var portsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .ports)
            for ports0 in ports {
                try portsContainer.encode(ports0)
            }
        }
        if let strings = strings {
            var stringsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .strings)
            for stringlist0 in strings {
                try stringsContainer.encode(stringlist0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let countDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .count)
        count = countDecoded
        let cidrsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .cidrs)
        var cidrsDecoded0:[String]? = nil
        if let cidrsContainer = cidrsContainer {
            cidrsDecoded0 = [String]()
            for string0 in cidrsContainer {
                if let string0 = string0 {
                    cidrsDecoded0?.append(string0)
                }
            }
        }
        cidrs = cidrsDecoded0
        let portsContainer = try containerValues.decodeIfPresent([Int?].self, forKey: .ports)
        var portsDecoded0:[Int]? = nil
        if let portsContainer = portsContainer {
            portsDecoded0 = [Int]()
            for integer0 in portsContainer {
                if let integer0 = integer0 {
                    portsDecoded0?.append(integer0)
                }
            }
        }
        ports = portsDecoded0
        let numberDecoded = try containerValues.decodeIfPresent(Double.self, forKey: .number)
        number = numberDecoded
        let numbersContainer = try containerValues.decodeIfPresent([Double?].self, forKey: .numbers)
        var numbersDecoded0:[Double]? = nil
        if let numbersContainer = numbersContainer {
            numbersDecoded0 = [Double]()
            for double0 in numbersContainer {
                if let double0 = double0 {
                    numbersDecoded0?.append(double0)
                }
            }
        }
        numbers = numbersDecoded0
        let stringsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .strings)
        var stringsDecoded0:[String]? = nil
        if let stringsContainer = stringsContainer {
            stringsDecoded0 = [String]()
            for string0 in stringsContainer {
                if let string0 = string0 {
                    stringsDecoded0?.append(string0)
                }
            }
        }
        strings = stringsDecoded0
    }
}