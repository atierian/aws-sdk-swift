// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension RepositoryTrigger: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case branches
        case customData
        case destinationArn
        case events
        case name
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let branches = branches {
            var branchesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .branches)
            for branchnamelist0 in branches {
                try branchesContainer.encode(branchnamelist0)
            }
        }
        if let customData = customData {
            try encodeContainer.encode(customData, forKey: .customData)
        }
        if let destinationArn = destinationArn {
            try encodeContainer.encode(destinationArn, forKey: .destinationArn)
        }
        if let events = events {
            var eventsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .events)
            for repositorytriggereventlist0 in events {
                try eventsContainer.encode(repositorytriggereventlist0.rawValue)
            }
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let destinationArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .destinationArn)
        destinationArn = destinationArnDecoded
        let customDataDecoded = try containerValues.decodeIfPresent(String.self, forKey: .customData)
        customData = customDataDecoded
        let branchesContainer = try containerValues.decodeIfPresent([String?].self, forKey: .branches)
        var branchesDecoded0:[String]? = nil
        if let branchesContainer = branchesContainer {
            branchesDecoded0 = [String]()
            for string0 in branchesContainer {
                if let string0 = string0 {
                    branchesDecoded0?.append(string0)
                }
            }
        }
        branches = branchesDecoded0
        let eventsContainer = try containerValues.decodeIfPresent([RepositoryTriggerEventEnum?].self, forKey: .events)
        var eventsDecoded0:[RepositoryTriggerEventEnum]? = nil
        if let eventsContainer = eventsContainer {
            eventsDecoded0 = [RepositoryTriggerEventEnum]()
            for string0 in eventsContainer {
                if let string0 = string0 {
                    eventsDecoded0?.append(string0)
                }
            }
        }
        events = eventsDecoded0
    }
}