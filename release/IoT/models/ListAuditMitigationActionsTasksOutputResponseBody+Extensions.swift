// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListAuditMitigationActionsTasksOutputResponseBody: Equatable {
    public let tasks: [AuditMitigationActionsTaskMetadata]?
    public let nextToken: String?
}

extension ListAuditMitigationActionsTasksOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken
        case tasks
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let tasksContainer = try containerValues.decodeIfPresent([AuditMitigationActionsTaskMetadata?].self, forKey: .tasks)
        var tasksDecoded0:[AuditMitigationActionsTaskMetadata]? = nil
        if let tasksContainer = tasksContainer {
            tasksDecoded0 = [AuditMitigationActionsTaskMetadata]()
            for structure0 in tasksContainer {
                if let structure0 = structure0 {
                    tasksDecoded0?.append(structure0)
                }
            }
        }
        tasks = tasksDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}