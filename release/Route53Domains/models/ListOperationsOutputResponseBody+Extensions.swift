// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListOperationsOutputResponseBody: Equatable {
    public let operations: [OperationSummary]?
    public let nextPageMarker: String?
}

extension ListOperationsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextPageMarker = "NextPageMarker"
        case operations = "Operations"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let operationsContainer = try containerValues.decodeIfPresent([OperationSummary?].self, forKey: .operations)
        var operationsDecoded0:[OperationSummary]? = nil
        if let operationsContainer = operationsContainer {
            operationsDecoded0 = [OperationSummary]()
            for structure0 in operationsContainer {
                if let structure0 = structure0 {
                    operationsDecoded0?.append(structure0)
                }
            }
        }
        operations = operationsDecoded0
        let nextPageMarkerDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextPageMarker)
        nextPageMarker = nextPageMarkerDecoded
    }
}