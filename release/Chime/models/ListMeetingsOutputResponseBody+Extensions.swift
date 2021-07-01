// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListMeetingsOutputResponseBody: Equatable {
    public let meetings: [Meeting]?
    public let nextToken: String?
}

extension ListMeetingsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case meetings = "Meetings"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let meetingsContainer = try containerValues.decodeIfPresent([Meeting?].self, forKey: .meetings)
        var meetingsDecoded0:[Meeting]? = nil
        if let meetingsContainer = meetingsContainer {
            meetingsDecoded0 = [Meeting]()
            for structure0 in meetingsContainer {
                if let structure0 = structure0 {
                    meetingsDecoded0?.append(structure0)
                }
            }
        }
        meetings = meetingsDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}