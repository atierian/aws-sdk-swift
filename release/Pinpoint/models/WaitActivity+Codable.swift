// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension WaitActivity: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case nextActivity = "NextActivity"
        case waitTime = "WaitTime"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let nextActivity = nextActivity {
            try encodeContainer.encode(nextActivity, forKey: .nextActivity)
        }
        if let waitTime = waitTime {
            try encodeContainer.encode(waitTime, forKey: .waitTime)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nextActivityDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextActivity)
        nextActivity = nextActivityDecoded
        let waitTimeDecoded = try containerValues.decodeIfPresent(WaitTime.self, forKey: .waitTime)
        waitTime = waitTimeDecoded
    }
}