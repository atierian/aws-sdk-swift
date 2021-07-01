// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct BatchUpdateTableRowsInputBody: Equatable {
    public let rowsToUpdate: [UpdateRowData]?
    public let clientRequestToken: String?
}

extension BatchUpdateTableRowsInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case clientRequestToken
        case rowsToUpdate
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let rowsToUpdateContainer = try containerValues.decodeIfPresent([UpdateRowData?].self, forKey: .rowsToUpdate)
        var rowsToUpdateDecoded0:[UpdateRowData]? = nil
        if let rowsToUpdateContainer = rowsToUpdateContainer {
            rowsToUpdateDecoded0 = [UpdateRowData]()
            for structure0 in rowsToUpdateContainer {
                if let structure0 = structure0 {
                    rowsToUpdateDecoded0?.append(structure0)
                }
            }
        }
        rowsToUpdate = rowsToUpdateDecoded0
        let clientRequestTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .clientRequestToken)
        clientRequestToken = clientRequestTokenDecoded
    }
}