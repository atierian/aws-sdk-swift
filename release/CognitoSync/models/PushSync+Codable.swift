// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension PushSync: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case applicationArns = "ApplicationArns"
        case roleArn = "RoleArn"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let applicationArns = applicationArns {
            var applicationArnsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .applicationArns)
            for applicationarnlist0 in applicationArns {
                try applicationArnsContainer.encode(applicationarnlist0)
            }
        }
        if let roleArn = roleArn {
            try encodeContainer.encode(roleArn, forKey: .roleArn)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let applicationArnsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .applicationArns)
        var applicationArnsDecoded0:[String]? = nil
        if let applicationArnsContainer = applicationArnsContainer {
            applicationArnsDecoded0 = [String]()
            for string0 in applicationArnsContainer {
                if let string0 = string0 {
                    applicationArnsDecoded0?.append(string0)
                }
            }
        }
        applicationArns = applicationArnsDecoded0
        let roleArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .roleArn)
        roleArn = roleArnDecoded
    }
}