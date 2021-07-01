// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct StartTextTranslationJobInputBody: Equatable {
    public let jobName: String?
    public let inputDataConfig: InputDataConfig?
    public let outputDataConfig: OutputDataConfig?
    public let dataAccessRoleArn: String?
    public let sourceLanguageCode: String?
    public let targetLanguageCodes: [String]?
    public let terminologyNames: [String]?
    public let parallelDataNames: [String]?
    public let clientToken: String?
}

extension StartTextTranslationJobInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case clientToken = "ClientToken"
        case dataAccessRoleArn = "DataAccessRoleArn"
        case inputDataConfig = "InputDataConfig"
        case jobName = "JobName"
        case outputDataConfig = "OutputDataConfig"
        case parallelDataNames = "ParallelDataNames"
        case sourceLanguageCode = "SourceLanguageCode"
        case targetLanguageCodes = "TargetLanguageCodes"
        case terminologyNames = "TerminologyNames"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let jobNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .jobName)
        jobName = jobNameDecoded
        let inputDataConfigDecoded = try containerValues.decodeIfPresent(InputDataConfig.self, forKey: .inputDataConfig)
        inputDataConfig = inputDataConfigDecoded
        let outputDataConfigDecoded = try containerValues.decodeIfPresent(OutputDataConfig.self, forKey: .outputDataConfig)
        outputDataConfig = outputDataConfigDecoded
        let dataAccessRoleArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .dataAccessRoleArn)
        dataAccessRoleArn = dataAccessRoleArnDecoded
        let sourceLanguageCodeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .sourceLanguageCode)
        sourceLanguageCode = sourceLanguageCodeDecoded
        let targetLanguageCodesContainer = try containerValues.decodeIfPresent([String?].self, forKey: .targetLanguageCodes)
        var targetLanguageCodesDecoded0:[String]? = nil
        if let targetLanguageCodesContainer = targetLanguageCodesContainer {
            targetLanguageCodesDecoded0 = [String]()
            for string0 in targetLanguageCodesContainer {
                if let string0 = string0 {
                    targetLanguageCodesDecoded0?.append(string0)
                }
            }
        }
        targetLanguageCodes = targetLanguageCodesDecoded0
        let terminologyNamesContainer = try containerValues.decodeIfPresent([String?].self, forKey: .terminologyNames)
        var terminologyNamesDecoded0:[String]? = nil
        if let terminologyNamesContainer = terminologyNamesContainer {
            terminologyNamesDecoded0 = [String]()
            for string0 in terminologyNamesContainer {
                if let string0 = string0 {
                    terminologyNamesDecoded0?.append(string0)
                }
            }
        }
        terminologyNames = terminologyNamesDecoded0
        let parallelDataNamesContainer = try containerValues.decodeIfPresent([String?].self, forKey: .parallelDataNames)
        var parallelDataNamesDecoded0:[String]? = nil
        if let parallelDataNamesContainer = parallelDataNamesContainer {
            parallelDataNamesDecoded0 = [String]()
            for string0 in parallelDataNamesContainer {
                if let string0 = string0 {
                    parallelDataNamesDecoded0?.append(string0)
                }
            }
        }
        parallelDataNames = parallelDataNamesDecoded0
        let clientTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .clientToken)
        clientToken = clientTokenDecoded
    }
}