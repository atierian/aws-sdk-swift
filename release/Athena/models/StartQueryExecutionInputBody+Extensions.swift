// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct StartQueryExecutionInputBody: Equatable {
    public let queryString: String?
    public let clientRequestToken: String?
    public let queryExecutionContext: QueryExecutionContext?
    public let resultConfiguration: ResultConfiguration?
    public let workGroup: String?
}

extension StartQueryExecutionInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case clientRequestToken = "ClientRequestToken"
        case queryExecutionContext = "QueryExecutionContext"
        case queryString = "QueryString"
        case resultConfiguration = "ResultConfiguration"
        case workGroup = "WorkGroup"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let queryStringDecoded = try containerValues.decodeIfPresent(String.self, forKey: .queryString)
        queryString = queryStringDecoded
        let clientRequestTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .clientRequestToken)
        clientRequestToken = clientRequestTokenDecoded
        let queryExecutionContextDecoded = try containerValues.decodeIfPresent(QueryExecutionContext.self, forKey: .queryExecutionContext)
        queryExecutionContext = queryExecutionContextDecoded
        let resultConfigurationDecoded = try containerValues.decodeIfPresent(ResultConfiguration.self, forKey: .resultConfiguration)
        resultConfiguration = resultConfigurationDecoded
        let workGroupDecoded = try containerValues.decodeIfPresent(String.self, forKey: .workGroup)
        workGroup = workGroupDecoded
    }
}