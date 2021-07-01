// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ServiceSummary: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case arn = "Arn"
        case createDate = "CreateDate"
        case description = "Description"
        case dnsConfig = "DnsConfig"
        case healthCheckConfig = "HealthCheckConfig"
        case healthCheckCustomConfig = "HealthCheckCustomConfig"
        case id = "Id"
        case instanceCount = "InstanceCount"
        case name = "Name"
        case type = "Type"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let arn = arn {
            try encodeContainer.encode(arn, forKey: .arn)
        }
        if let createDate = createDate {
            try encodeContainer.encode(createDate.timeIntervalSince1970, forKey: .createDate)
        }
        if let description = description {
            try encodeContainer.encode(description, forKey: .description)
        }
        if let dnsConfig = dnsConfig {
            try encodeContainer.encode(dnsConfig, forKey: .dnsConfig)
        }
        if let healthCheckConfig = healthCheckConfig {
            try encodeContainer.encode(healthCheckConfig, forKey: .healthCheckConfig)
        }
        if let healthCheckCustomConfig = healthCheckCustomConfig {
            try encodeContainer.encode(healthCheckCustomConfig, forKey: .healthCheckCustomConfig)
        }
        if let id = id {
            try encodeContainer.encode(id, forKey: .id)
        }
        if let instanceCount = instanceCount {
            try encodeContainer.encode(instanceCount, forKey: .instanceCount)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let type = type {
            try encodeContainer.encode(type.rawValue, forKey: .type)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let idDecoded = try containerValues.decodeIfPresent(String.self, forKey: .id)
        id = idDecoded
        let arnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .arn)
        arn = arnDecoded
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let typeDecoded = try containerValues.decodeIfPresent(ServiceType.self, forKey: .type)
        type = typeDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let instanceCountDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .instanceCount)
        instanceCount = instanceCountDecoded
        let dnsConfigDecoded = try containerValues.decodeIfPresent(DnsConfig.self, forKey: .dnsConfig)
        dnsConfig = dnsConfigDecoded
        let healthCheckConfigDecoded = try containerValues.decodeIfPresent(HealthCheckConfig.self, forKey: .healthCheckConfig)
        healthCheckConfig = healthCheckConfigDecoded
        let healthCheckCustomConfigDecoded = try containerValues.decodeIfPresent(HealthCheckCustomConfig.self, forKey: .healthCheckCustomConfig)
        healthCheckCustomConfig = healthCheckCustomConfigDecoded
        let createDateDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .createDate)
        createDate = createDateDecoded
    }
}