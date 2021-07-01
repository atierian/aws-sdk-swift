// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListFlowExecutionMessagesOutputResponseBody: Equatable {
    public let messages: [FlowExecutionMessage]?
    public let nextToken: String?
}

extension ListFlowExecutionMessagesOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case messages
        case nextToken
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messagesContainer = try containerValues.decodeIfPresent([FlowExecutionMessage?].self, forKey: .messages)
        var messagesDecoded0:[FlowExecutionMessage]? = nil
        if let messagesContainer = messagesContainer {
            messagesDecoded0 = [FlowExecutionMessage]()
            for structure0 in messagesContainer {
                if let structure0 = structure0 {
                    messagesDecoded0?.append(structure0)
                }
            }
        }
        messages = messagesDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}