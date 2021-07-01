// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension HttpParameters: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case headerParameters = "HeaderParameters"
        case pathParameterValues = "PathParameterValues"
        case queryStringParameters = "QueryStringParameters"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let headerParameters = headerParameters {
            var headerParametersContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .headerParameters)
            for (dictKey0, headerparametersmap0) in headerParameters {
                try headerParametersContainer.encode(headerparametersmap0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let pathParameterValues = pathParameterValues {
            var pathParameterValuesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .pathParameterValues)
            for pathparameterlist0 in pathParameterValues {
                try pathParameterValuesContainer.encode(pathparameterlist0)
            }
        }
        if let queryStringParameters = queryStringParameters {
            var queryStringParametersContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .queryStringParameters)
            for (dictKey0, querystringparametersmap0) in queryStringParameters {
                try queryStringParametersContainer.encode(querystringparametersmap0, forKey: Key(stringValue: dictKey0))
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let pathParameterValuesContainer = try containerValues.decodeIfPresent([String?].self, forKey: .pathParameterValues)
        var pathParameterValuesDecoded0:[String]? = nil
        if let pathParameterValuesContainer = pathParameterValuesContainer {
            pathParameterValuesDecoded0 = [String]()
            for string0 in pathParameterValuesContainer {
                if let string0 = string0 {
                    pathParameterValuesDecoded0?.append(string0)
                }
            }
        }
        pathParameterValues = pathParameterValuesDecoded0
        let headerParametersContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .headerParameters)
        var headerParametersDecoded0: [String:String]? = nil
        if let headerParametersContainer = headerParametersContainer {
            headerParametersDecoded0 = [String:String]()
            for (key0, headervalue0) in headerParametersContainer {
                if let headervalue0 = headervalue0 {
                    headerParametersDecoded0?[key0] = headervalue0
                }
            }
        }
        headerParameters = headerParametersDecoded0
        let queryStringParametersContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .queryStringParameters)
        var queryStringParametersDecoded0: [String:String]? = nil
        if let queryStringParametersContainer = queryStringParametersContainer {
            queryStringParametersDecoded0 = [String:String]()
            for (key0, querystringvalue0) in queryStringParametersContainer {
                if let querystringvalue0 = querystringvalue0 {
                    queryStringParametersDecoded0?[key0] = querystringvalue0
                }
            }
        }
        queryStringParameters = queryStringParametersDecoded0
    }
}