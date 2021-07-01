// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListScramSecretsOutputResponseBody: Equatable {
    public let nextToken: String?
    public let secretArnList: [String]?
}

extension ListScramSecretsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken = "nextToken"
        case secretArnList = "secretArnList"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        let secretArnListContainer = try containerValues.decodeIfPresent([String?].self, forKey: .secretArnList)
        var secretArnListDecoded0:[String]? = nil
        if let secretArnListContainer = secretArnListContainer {
            secretArnListDecoded0 = [String]()
            for string0 in secretArnListContainer {
                if let string0 = string0 {
                    secretArnListDecoded0?.append(string0)
                }
            }
        }
        secretArnList = secretArnListDecoded0
    }
}