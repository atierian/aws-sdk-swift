// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension StreamingDistributionSummary: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case aRN = "ARN"
        case aliases = "Aliases"
        case comment = "Comment"
        case domainName = "DomainName"
        case enabled = "Enabled"
        case id = "Id"
        case lastModifiedTime = "LastModifiedTime"
        case priceClass = "PriceClass"
        case s3Origin = "S3Origin"
        case status = "Status"
        case trustedSigners = "TrustedSigners"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://cloudfront.amazonaws.com/doc/2020-05-31/", forKey: Key("xmlns"))
        }
        if let aRN = aRN {
            try container.encode(aRN, forKey: Key("aRN"))
        }
        if let aliases = aliases {
            try container.encode(aliases, forKey: Key("aliases"))
        }
        if let comment = comment {
            try container.encode(comment, forKey: Key("comment"))
        }
        if let domainName = domainName {
            try container.encode(domainName, forKey: Key("domainName"))
        }
        if let enabled = enabled {
            try container.encode(enabled, forKey: Key("enabled"))
        }
        if let id = id {
            try container.encode(id, forKey: Key("id"))
        }
        if let lastModifiedTime = lastModifiedTime {
            try container.encode(TimestampWrapper(lastModifiedTime, format: .dateTime), forKey: Key("lastModifiedTime"))
        }
        if let priceClass = priceClass {
            try container.encode(priceClass, forKey: Key("priceClass"))
        }
        if let s3Origin = s3Origin {
            try container.encode(s3Origin, forKey: Key("s3Origin"))
        }
        if let status = status {
            try container.encode(status, forKey: Key("status"))
        }
        if let trustedSigners = trustedSigners {
            try container.encode(trustedSigners, forKey: Key("trustedSigners"))
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let idDecoded = try containerValues.decodeIfPresent(String.self, forKey: .id)
        id = idDecoded
        let aRNDecoded = try containerValues.decodeIfPresent(String.self, forKey: .aRN)
        aRN = aRNDecoded
        let statusDecoded = try containerValues.decodeIfPresent(String.self, forKey: .status)
        status = statusDecoded
        let lastModifiedTimeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .lastModifiedTime)
        var lastModifiedTimeBuffer:Date? = nil
        if let lastModifiedTimeDecoded = lastModifiedTimeDecoded {
            lastModifiedTimeBuffer = try TimestampWrapperDecoder.parseDateStringValue(lastModifiedTimeDecoded, format: .dateTime)
        }
        lastModifiedTime = lastModifiedTimeBuffer
        let domainNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .domainName)
        domainName = domainNameDecoded
        let s3OriginDecoded = try containerValues.decodeIfPresent(S3Origin.self, forKey: .s3Origin)
        s3Origin = s3OriginDecoded
        let aliasesDecoded = try containerValues.decodeIfPresent(Aliases.self, forKey: .aliases)
        aliases = aliasesDecoded
        let trustedSignersDecoded = try containerValues.decodeIfPresent(TrustedSigners.self, forKey: .trustedSigners)
        trustedSigners = trustedSignersDecoded
        let commentDecoded = try containerValues.decodeIfPresent(String.self, forKey: .comment)
        comment = commentDecoded
        let priceClassDecoded = try containerValues.decodeIfPresent(PriceClass.self, forKey: .priceClass)
        priceClass = priceClassDecoded
        let enabledDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .enabled)
        enabled = enabledDecoded
    }
}