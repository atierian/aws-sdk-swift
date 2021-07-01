// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateApiOutputResponseBody: Equatable {
    public let apiEndpoint: String?
    public let apiGatewayManaged: Bool
    public let apiId: String?
    public let apiKeySelectionExpression: String?
    public let corsConfiguration: Cors?
    public let createdDate: Date?
    public let description: String?
    public let disableSchemaValidation: Bool
    public let disableExecuteApiEndpoint: Bool
    public let importInfo: [String]?
    public let name: String?
    public let protocolType: ProtocolType?
    public let routeSelectionExpression: String?
    public let tags: [String:String]?
    public let version: String?
    public let warnings: [String]?
}

extension UpdateApiOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case apiEndpoint = "apiEndpoint"
        case apiGatewayManaged = "apiGatewayManaged"
        case apiId = "apiId"
        case apiKeySelectionExpression = "apiKeySelectionExpression"
        case corsConfiguration = "corsConfiguration"
        case createdDate = "createdDate"
        case description = "description"
        case disableExecuteApiEndpoint = "disableExecuteApiEndpoint"
        case disableSchemaValidation = "disableSchemaValidation"
        case importInfo = "importInfo"
        case name = "name"
        case protocolType = "protocolType"
        case routeSelectionExpression = "routeSelectionExpression"
        case tags = "tags"
        case version = "version"
        case warnings = "warnings"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let apiEndpointDecoded = try containerValues.decodeIfPresent(String.self, forKey: .apiEndpoint)
        apiEndpoint = apiEndpointDecoded
        let apiGatewayManagedDecoded = try containerValues.decode(Bool.self, forKey: .apiGatewayManaged)
        apiGatewayManaged = apiGatewayManagedDecoded
        let apiIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .apiId)
        apiId = apiIdDecoded
        let apiKeySelectionExpressionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .apiKeySelectionExpression)
        apiKeySelectionExpression = apiKeySelectionExpressionDecoded
        let corsConfigurationDecoded = try containerValues.decodeIfPresent(Cors.self, forKey: .corsConfiguration)
        corsConfiguration = corsConfigurationDecoded
        let createdDateDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .createdDate)
        createdDate = createdDateDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let disableSchemaValidationDecoded = try containerValues.decode(Bool.self, forKey: .disableSchemaValidation)
        disableSchemaValidation = disableSchemaValidationDecoded
        let disableExecuteApiEndpointDecoded = try containerValues.decode(Bool.self, forKey: .disableExecuteApiEndpoint)
        disableExecuteApiEndpoint = disableExecuteApiEndpointDecoded
        let importInfoContainer = try containerValues.decodeIfPresent([String?].self, forKey: .importInfo)
        var importInfoDecoded0:[String]? = nil
        if let importInfoContainer = importInfoContainer {
            importInfoDecoded0 = [String]()
            for string0 in importInfoContainer {
                if let string0 = string0 {
                    importInfoDecoded0?.append(string0)
                }
            }
        }
        importInfo = importInfoDecoded0
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let protocolTypeDecoded = try containerValues.decodeIfPresent(ProtocolType.self, forKey: .protocolType)
        protocolType = protocolTypeDecoded
        let routeSelectionExpressionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .routeSelectionExpression)
        routeSelectionExpression = routeSelectionExpressionDecoded
        let tagsContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .tags)
        var tagsDecoded0: [String:String]? = nil
        if let tagsContainer = tagsContainer {
            tagsDecoded0 = [String:String]()
            for (key0, stringwithlengthbetween1and16000) in tagsContainer {
                if let stringwithlengthbetween1and16000 = stringwithlengthbetween1and16000 {
                    tagsDecoded0?[key0] = stringwithlengthbetween1and16000
                }
            }
        }
        tags = tagsDecoded0
        let versionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .version)
        version = versionDecoded
        let warningsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .warnings)
        var warningsDecoded0:[String]? = nil
        if let warningsContainer = warningsContainer {
            warningsDecoded0 = [String]()
            for string0 in warningsContainer {
                if let string0 = string0 {
                    warningsDecoded0?.append(string0)
                }
            }
        }
        warnings = warningsDecoded0
    }
}