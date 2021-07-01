// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct RequestCancelWorkflowExecutionInputBody: Equatable {
    public let domain: String?
    public let workflowId: String?
    public let runId: String?
}

extension RequestCancelWorkflowExecutionInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case domain
        case runId
        case workflowId
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let domainDecoded = try containerValues.decodeIfPresent(String.self, forKey: .domain)
        domain = domainDecoded
        let workflowIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .workflowId)
        workflowId = workflowIdDecoded
        let runIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .runId)
        runId = runIdDecoded
    }
}