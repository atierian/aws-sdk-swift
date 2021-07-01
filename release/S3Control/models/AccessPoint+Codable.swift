// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AccessPoint: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case accessPointArn = "AccessPointArn"
        case bucket = "Bucket"
        case name = "Name"
        case networkOrigin = "NetworkOrigin"
        case vpcConfiguration = "VpcConfiguration"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://awss3control.amazonaws.com/doc/2018-08-20/", forKey: Key("xmlns"))
        }
        if let accessPointArn = accessPointArn {
            try container.encode(accessPointArn, forKey: Key("accessPointArn"))
        }
        if let bucket = bucket {
            try container.encode(bucket, forKey: Key("bucket"))
        }
        if let name = name {
            try container.encode(name, forKey: Key("name"))
        }
        if let networkOrigin = networkOrigin {
            try container.encode(networkOrigin, forKey: Key("networkOrigin"))
        }
        if let vpcConfiguration = vpcConfiguration {
            try container.encode(vpcConfiguration, forKey: Key("vpcConfiguration"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let networkOriginDecoded = try containerValues.decodeIfPresent(NetworkOrigin.self, forKey: .networkOrigin)
        networkOrigin = networkOriginDecoded
        let vpcConfigurationDecoded = try containerValues.decodeIfPresent(VpcConfiguration.self, forKey: .vpcConfiguration)
        vpcConfiguration = vpcConfigurationDecoded
        let bucketDecoded = try containerValues.decodeIfPresent(String.self, forKey: .bucket)
        bucket = bucketDecoded
        let accessPointArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .accessPointArn)
        accessPointArn = accessPointArnDecoded
    }
}