// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeAssociationExecutionsOutputResponseBody: Equatable {
    public let associationExecutions: [AssociationExecution]?
    public let nextToken: String?
}

extension DescribeAssociationExecutionsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case associationExecutions = "AssociationExecutions"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let associationExecutionsContainer = try containerValues.decodeIfPresent([AssociationExecution?].self, forKey: .associationExecutions)
        var associationExecutionsDecoded0:[AssociationExecution]? = nil
        if let associationExecutionsContainer = associationExecutionsContainer {
            associationExecutionsDecoded0 = [AssociationExecution]()
            for structure0 in associationExecutionsContainer {
                if let structure0 = structure0 {
                    associationExecutionsDecoded0?.append(structure0)
                }
            }
        }
        associationExecutions = associationExecutionsDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}