// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateProjectInputBody: Equatable {
    public let arn: String?
    public let name: String?
    public let defaultJobTimeoutMinutes: Int?
}

extension UpdateProjectInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case arn
        case defaultJobTimeoutMinutes
        case name
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let arnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .arn)
        arn = arnDecoded
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let defaultJobTimeoutMinutesDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .defaultJobTimeoutMinutes)
        defaultJobTimeoutMinutes = defaultJobTimeoutMinutesDecoded
    }
}