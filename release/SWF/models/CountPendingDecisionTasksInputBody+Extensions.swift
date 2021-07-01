// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CountPendingDecisionTasksInputBody: Equatable {
    public let domain: String?
    public let taskList: TaskList?
}

extension CountPendingDecisionTasksInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case domain
        case taskList
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let domainDecoded = try containerValues.decodeIfPresent(String.self, forKey: .domain)
        domain = domainDecoded
        let taskListDecoded = try containerValues.decodeIfPresent(TaskList.self, forKey: .taskList)
        taskList = taskListDecoded
    }
}