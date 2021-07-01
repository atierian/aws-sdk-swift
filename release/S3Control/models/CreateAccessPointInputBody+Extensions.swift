// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateAccessPointInputBody: Equatable {
    public let bucket: String?
    public let vpcConfiguration: VpcConfiguration?
    public let publicAccessBlockConfiguration: PublicAccessBlockConfiguration?
}

extension CreateAccessPointInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case publicAccessBlockConfiguration = "PublicAccessBlockConfiguration"
        case vpcConfiguration = "VpcConfiguration"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let bucketDecoded = try containerValues.decodeIfPresent(String.self, forKey: .bucket)
        bucket = bucketDecoded
        let vpcConfigurationDecoded = try containerValues.decodeIfPresent(VpcConfiguration.self, forKey: .vpcConfiguration)
        vpcConfiguration = vpcConfigurationDecoded
        let publicAccessBlockConfigurationDecoded = try containerValues.decodeIfPresent(PublicAccessBlockConfiguration.self, forKey: .publicAccessBlockConfiguration)
        publicAccessBlockConfiguration = publicAccessBlockConfigurationDecoded
    }
}