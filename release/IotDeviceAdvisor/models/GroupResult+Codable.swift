// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GroupResult: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case groupId
        case groupName
        case tests
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let groupId = groupId {
            try encodeContainer.encode(groupId, forKey: .groupId)
        }
        if let groupName = groupName {
            try encodeContainer.encode(groupName, forKey: .groupName)
        }
        if let tests = tests {
            var testsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .tests)
            for testcaseruns0 in tests {
                try testsContainer.encode(testcaseruns0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let groupIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .groupId)
        groupId = groupIdDecoded
        let groupNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .groupName)
        groupName = groupNameDecoded
        let testsContainer = try containerValues.decodeIfPresent([TestCaseRun?].self, forKey: .tests)
        var testsDecoded0:[TestCaseRun]? = nil
        if let testsContainer = testsContainer {
            testsDecoded0 = [TestCaseRun]()
            for structure0 in testsContainer {
                if let structure0 = structure0 {
                    testsDecoded0?.append(structure0)
                }
            }
        }
        tests = testsDecoded0
    }
}