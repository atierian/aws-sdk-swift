// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateCustomDataIdentifierInputBody: Equatable {
    public let clientToken: String?
    public let description: String?
    public let ignoreWords: [String]?
    public let keywords: [String]?
    public let maximumMatchDistance: Int
    public let name: String?
    public let regex: String?
    public let tags: [String:String]?
}

extension CreateCustomDataIdentifierInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case clientToken = "clientToken"
        case description = "description"
        case ignoreWords = "ignoreWords"
        case keywords = "keywords"
        case maximumMatchDistance = "maximumMatchDistance"
        case name = "name"
        case regex = "regex"
        case tags = "tags"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let clientTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .clientToken)
        clientToken = clientTokenDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let ignoreWordsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .ignoreWords)
        var ignoreWordsDecoded0:[String]? = nil
        if let ignoreWordsContainer = ignoreWordsContainer {
            ignoreWordsDecoded0 = [String]()
            for string0 in ignoreWordsContainer {
                if let string0 = string0 {
                    ignoreWordsDecoded0?.append(string0)
                }
            }
        }
        ignoreWords = ignoreWordsDecoded0
        let keywordsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .keywords)
        var keywordsDecoded0:[String]? = nil
        if let keywordsContainer = keywordsContainer {
            keywordsDecoded0 = [String]()
            for string0 in keywordsContainer {
                if let string0 = string0 {
                    keywordsDecoded0?.append(string0)
                }
            }
        }
        keywords = keywordsDecoded0
        let maximumMatchDistanceDecoded = try containerValues.decode(Int.self, forKey: .maximumMatchDistance)
        maximumMatchDistance = maximumMatchDistanceDecoded
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let regexDecoded = try containerValues.decodeIfPresent(String.self, forKey: .regex)
        regex = regexDecoded
        let tagsContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .tags)
        var tagsDecoded0: [String:String]? = nil
        if let tagsContainer = tagsContainer {
            tagsDecoded0 = [String:String]()
            for (key0, __string0) in tagsContainer {
                if let __string0 = __string0 {
                    tagsDecoded0?[key0] = __string0
                }
            }
        }
        tags = tagsDecoded0
    }
}