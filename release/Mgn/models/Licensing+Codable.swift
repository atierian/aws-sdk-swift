// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Licensing: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case osByol
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let osByol = osByol {
            try encodeContainer.encode(osByol, forKey: .osByol)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let osByolDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .osByol)
        osByol = osByolDecoded
    }
}