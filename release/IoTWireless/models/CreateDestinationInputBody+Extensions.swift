// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateDestinationInputBody: Equatable {
    public let name: String?
    public let expressionType: ExpressionType?
    public let expression: String?
    public let description: String?
    public let roleArn: String?
    public let tags: [Tag]?
    public let clientRequestToken: String?
}

extension CreateDestinationInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case clientRequestToken = "ClientRequestToken"
        case description = "Description"
        case expression = "Expression"
        case expressionType = "ExpressionType"
        case name = "Name"
        case roleArn = "RoleArn"
        case tags = "Tags"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let expressionTypeDecoded = try containerValues.decodeIfPresent(ExpressionType.self, forKey: .expressionType)
        expressionType = expressionTypeDecoded
        let expressionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .expression)
        expression = expressionDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let roleArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .roleArn)
        roleArn = roleArnDecoded
        let tagsContainer = try containerValues.decodeIfPresent([Tag?].self, forKey: .tags)
        var tagsDecoded0:[Tag]? = nil
        if let tagsContainer = tagsContainer {
            tagsDecoded0 = [Tag]()
            for structure0 in tagsContainer {
                if let structure0 = structure0 {
                    tagsDecoded0?.append(structure0)
                }
            }
        }
        tags = tagsDecoded0
        let clientRequestTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .clientRequestToken)
        clientRequestToken = clientRequestTokenDecoded
    }
}