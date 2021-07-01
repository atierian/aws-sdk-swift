// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListProjectsOutputResponseBody: Equatable {
    public let projects: [ProjectSummary]?
    public let nextToken: String?
}

extension ListProjectsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken
        case projects
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let projectsContainer = try containerValues.decodeIfPresent([ProjectSummary?].self, forKey: .projects)
        var projectsDecoded0:[ProjectSummary]? = nil
        if let projectsContainer = projectsContainer {
            projectsDecoded0 = [ProjectSummary]()
            for structure0 in projectsContainer {
                if let structure0 = structure0 {
                    projectsDecoded0?.append(structure0)
                }
            }
        }
        projects = projectsDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}