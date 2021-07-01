// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GatewayResponse: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case defaultResponse
        case responseParameters
        case responseTemplates
        case responseType
        case statusCode
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if defaultResponse != false {
            try encodeContainer.encode(defaultResponse, forKey: .defaultResponse)
        }
        if let responseParameters = responseParameters {
            var responseParametersContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .responseParameters)
            for (dictKey0, mapofstringtostring0) in responseParameters {
                try responseParametersContainer.encode(mapofstringtostring0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let responseTemplates = responseTemplates {
            var responseTemplatesContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .responseTemplates)
            for (dictKey0, mapofstringtostring0) in responseTemplates {
                try responseTemplatesContainer.encode(mapofstringtostring0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let responseType = responseType {
            try encodeContainer.encode(responseType.rawValue, forKey: .responseType)
        }
        if let statusCode = statusCode {
            try encodeContainer.encode(statusCode, forKey: .statusCode)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let responseTypeDecoded = try containerValues.decodeIfPresent(GatewayResponseType.self, forKey: .responseType)
        responseType = responseTypeDecoded
        let statusCodeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .statusCode)
        statusCode = statusCodeDecoded
        let responseParametersContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .responseParameters)
        var responseParametersDecoded0: [String:String]? = nil
        if let responseParametersContainer = responseParametersContainer {
            responseParametersDecoded0 = [String:String]()
            for (key0, string0) in responseParametersContainer {
                if let string0 = string0 {
                    responseParametersDecoded0?[key0] = string0
                }
            }
        }
        responseParameters = responseParametersDecoded0
        let responseTemplatesContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .responseTemplates)
        var responseTemplatesDecoded0: [String:String]? = nil
        if let responseTemplatesContainer = responseTemplatesContainer {
            responseTemplatesDecoded0 = [String:String]()
            for (key0, string0) in responseTemplatesContainer {
                if let string0 = string0 {
                    responseTemplatesDecoded0?[key0] = string0
                }
            }
        }
        responseTemplates = responseTemplatesDecoded0
        let defaultResponseDecoded = try containerValues.decode(Bool.self, forKey: .defaultResponse)
        defaultResponse = defaultResponseDecoded
    }
}