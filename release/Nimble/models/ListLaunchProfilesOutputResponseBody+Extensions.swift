// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListLaunchProfilesOutputResponseBody: Equatable {
    public let launchProfiles: [LaunchProfile]?
    public let nextToken: String?
}

extension ListLaunchProfilesOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case launchProfiles = "launchProfiles"
        case nextToken = "nextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let launchProfilesContainer = try containerValues.decodeIfPresent([LaunchProfile?].self, forKey: .launchProfiles)
        var launchProfilesDecoded0:[LaunchProfile]? = nil
        if let launchProfilesContainer = launchProfilesContainer {
            launchProfilesDecoded0 = [LaunchProfile]()
            for structure0 in launchProfilesContainer {
                if let structure0 = structure0 {
                    launchProfilesDecoded0?.append(structure0)
                }
            }
        }
        launchProfiles = launchProfilesDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}