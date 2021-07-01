// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AwsSecretsManagerSecretRotationRules: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case automaticallyAfterDays = "AutomaticallyAfterDays"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if automaticallyAfterDays != 0 {
            try encodeContainer.encode(automaticallyAfterDays, forKey: .automaticallyAfterDays)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let automaticallyAfterDaysDecoded = try containerValues.decode(Int.self, forKey: .automaticallyAfterDays)
        automaticallyAfterDays = automaticallyAfterDaysDecoded
    }
}