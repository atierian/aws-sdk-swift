// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListSimulationJobBatchesOutputResponseBody: Equatable {
    public let simulationJobBatchSummaries: [SimulationJobBatchSummary]?
    public let nextToken: String?
}

extension ListSimulationJobBatchesOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken
        case simulationJobBatchSummaries
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let simulationJobBatchSummariesContainer = try containerValues.decodeIfPresent([SimulationJobBatchSummary?].self, forKey: .simulationJobBatchSummaries)
        var simulationJobBatchSummariesDecoded0:[SimulationJobBatchSummary]? = nil
        if let simulationJobBatchSummariesContainer = simulationJobBatchSummariesContainer {
            simulationJobBatchSummariesDecoded0 = [SimulationJobBatchSummary]()
            for structure0 in simulationJobBatchSummariesContainer {
                if let structure0 = structure0 {
                    simulationJobBatchSummariesDecoded0?.append(structure0)
                }
            }
        }
        simulationJobBatchSummaries = simulationJobBatchSummariesDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}