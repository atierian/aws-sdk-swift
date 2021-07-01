// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct StartFlowOutputResponseBody: Equatable {
    public let flowArn: String?
    public let flowStatus: FlowStatus?
    public let executionId: String?
}

extension StartFlowOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case executionId
        case flowArn
        case flowStatus
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let flowArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .flowArn)
        flowArn = flowArnDecoded
        let flowStatusDecoded = try containerValues.decodeIfPresent(FlowStatus.self, forKey: .flowStatus)
        flowStatus = flowStatusDecoded
        let executionIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .executionId)
        executionId = executionIdDecoded
    }
}