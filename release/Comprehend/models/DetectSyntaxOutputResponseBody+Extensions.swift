// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DetectSyntaxOutputResponseBody: Equatable {
    public let syntaxTokens: [SyntaxToken]?
}

extension DetectSyntaxOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case syntaxTokens = "SyntaxTokens"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let syntaxTokensContainer = try containerValues.decodeIfPresent([SyntaxToken?].self, forKey: .syntaxTokens)
        var syntaxTokensDecoded0:[SyntaxToken]? = nil
        if let syntaxTokensContainer = syntaxTokensContainer {
            syntaxTokensDecoded0 = [SyntaxToken]()
            for structure0 in syntaxTokensContainer {
                if let structure0 = structure0 {
                    syntaxTokensDecoded0?.append(structure0)
                }
            }
        }
        syntaxTokens = syntaxTokensDecoded0
    }
}