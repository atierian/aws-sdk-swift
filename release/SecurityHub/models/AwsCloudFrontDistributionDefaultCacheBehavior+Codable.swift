// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AwsCloudFrontDistributionDefaultCacheBehavior: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case viewerProtocolPolicy = "ViewerProtocolPolicy"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let viewerProtocolPolicy = viewerProtocolPolicy {
            try encodeContainer.encode(viewerProtocolPolicy, forKey: .viewerProtocolPolicy)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let viewerProtocolPolicyDecoded = try containerValues.decodeIfPresent(String.self, forKey: .viewerProtocolPolicy)
        viewerProtocolPolicy = viewerProtocolPolicyDecoded
    }
}