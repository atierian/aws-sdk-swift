// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DataSourceParameters: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case amazonElasticsearchParameters = "AmazonElasticsearchParameters"
        case athenaParameters = "AthenaParameters"
        case auroraParameters = "AuroraParameters"
        case auroraPostgreSqlParameters = "AuroraPostgreSqlParameters"
        case awsIotAnalyticsParameters = "AwsIotAnalyticsParameters"
        case jiraParameters = "JiraParameters"
        case mariaDbParameters = "MariaDbParameters"
        case mySqlParameters = "MySqlParameters"
        case oracleParameters = "OracleParameters"
        case postgreSqlParameters = "PostgreSqlParameters"
        case prestoParameters = "PrestoParameters"
        case rdsParameters = "RdsParameters"
        case redshiftParameters = "RedshiftParameters"
        case s3Parameters = "S3Parameters"
        case serviceNowParameters = "ServiceNowParameters"
        case snowflakeParameters = "SnowflakeParameters"
        case sparkParameters = "SparkParameters"
        case sqlServerParameters = "SqlServerParameters"
        case teradataParameters = "TeradataParameters"
        case twitterParameters = "TwitterParameters"
        case sdkUnknown
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
            case let .amazonElasticsearchParameters(amazonElasticsearchParameters):
                if let amazonElasticsearchParameters = amazonElasticsearchParameters {
                    try container.encode(amazonElasticsearchParameters, forKey: .amazonElasticsearchParameters)
                }
            case let .athenaParameters(athenaParameters):
                if let athenaParameters = athenaParameters {
                    try container.encode(athenaParameters, forKey: .athenaParameters)
                }
            case let .auroraParameters(auroraParameters):
                if let auroraParameters = auroraParameters {
                    try container.encode(auroraParameters, forKey: .auroraParameters)
                }
            case let .auroraPostgreSqlParameters(auroraPostgreSqlParameters):
                if let auroraPostgreSqlParameters = auroraPostgreSqlParameters {
                    try container.encode(auroraPostgreSqlParameters, forKey: .auroraPostgreSqlParameters)
                }
            case let .awsIotAnalyticsParameters(awsIotAnalyticsParameters):
                if let awsIotAnalyticsParameters = awsIotAnalyticsParameters {
                    try container.encode(awsIotAnalyticsParameters, forKey: .awsIotAnalyticsParameters)
                }
            case let .jiraParameters(jiraParameters):
                if let jiraParameters = jiraParameters {
                    try container.encode(jiraParameters, forKey: .jiraParameters)
                }
            case let .mariaDbParameters(mariaDbParameters):
                if let mariaDbParameters = mariaDbParameters {
                    try container.encode(mariaDbParameters, forKey: .mariaDbParameters)
                }
            case let .mySqlParameters(mySqlParameters):
                if let mySqlParameters = mySqlParameters {
                    try container.encode(mySqlParameters, forKey: .mySqlParameters)
                }
            case let .oracleParameters(oracleParameters):
                if let oracleParameters = oracleParameters {
                    try container.encode(oracleParameters, forKey: .oracleParameters)
                }
            case let .postgreSqlParameters(postgreSqlParameters):
                if let postgreSqlParameters = postgreSqlParameters {
                    try container.encode(postgreSqlParameters, forKey: .postgreSqlParameters)
                }
            case let .prestoParameters(prestoParameters):
                if let prestoParameters = prestoParameters {
                    try container.encode(prestoParameters, forKey: .prestoParameters)
                }
            case let .rdsParameters(rdsParameters):
                if let rdsParameters = rdsParameters {
                    try container.encode(rdsParameters, forKey: .rdsParameters)
                }
            case let .redshiftParameters(redshiftParameters):
                if let redshiftParameters = redshiftParameters {
                    try container.encode(redshiftParameters, forKey: .redshiftParameters)
                }
            case let .s3Parameters(s3Parameters):
                if let s3Parameters = s3Parameters {
                    try container.encode(s3Parameters, forKey: .s3Parameters)
                }
            case let .serviceNowParameters(serviceNowParameters):
                if let serviceNowParameters = serviceNowParameters {
                    try container.encode(serviceNowParameters, forKey: .serviceNowParameters)
                }
            case let .snowflakeParameters(snowflakeParameters):
                if let snowflakeParameters = snowflakeParameters {
                    try container.encode(snowflakeParameters, forKey: .snowflakeParameters)
                }
            case let .sparkParameters(sparkParameters):
                if let sparkParameters = sparkParameters {
                    try container.encode(sparkParameters, forKey: .sparkParameters)
                }
            case let .sqlServerParameters(sqlServerParameters):
                if let sqlServerParameters = sqlServerParameters {
                    try container.encode(sqlServerParameters, forKey: .sqlServerParameters)
                }
            case let .teradataParameters(teradataParameters):
                if let teradataParameters = teradataParameters {
                    try container.encode(teradataParameters, forKey: .teradataParameters)
                }
            case let .twitterParameters(twitterParameters):
                if let twitterParameters = twitterParameters {
                    try container.encode(twitterParameters, forKey: .twitterParameters)
                }
            case let .sdkUnknown(sdkUnknown):
                try container.encode(sdkUnknown, forKey: .sdkUnknown)
        }
    }

    public init (from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        let amazonElasticsearchParametersDecoded = try values.decodeIfPresent(AmazonElasticsearchParameters.self, forKey: .amazonElasticsearchParameters)
        if let amazonElasticsearchParameters = amazonElasticsearchParametersDecoded {
            self = .amazonElasticsearchParameters(amazonElasticsearchParameters)
            return
        }
        let athenaParametersDecoded = try values.decodeIfPresent(AthenaParameters.self, forKey: .athenaParameters)
        if let athenaParameters = athenaParametersDecoded {
            self = .athenaParameters(athenaParameters)
            return
        }
        let auroraParametersDecoded = try values.decodeIfPresent(AuroraParameters.self, forKey: .auroraParameters)
        if let auroraParameters = auroraParametersDecoded {
            self = .auroraParameters(auroraParameters)
            return
        }
        let auroraPostgreSqlParametersDecoded = try values.decodeIfPresent(AuroraPostgreSqlParameters.self, forKey: .auroraPostgreSqlParameters)
        if let auroraPostgreSqlParameters = auroraPostgreSqlParametersDecoded {
            self = .auroraPostgreSqlParameters(auroraPostgreSqlParameters)
            return
        }
        let awsIotAnalyticsParametersDecoded = try values.decodeIfPresent(AwsIotAnalyticsParameters.self, forKey: .awsIotAnalyticsParameters)
        if let awsIotAnalyticsParameters = awsIotAnalyticsParametersDecoded {
            self = .awsIotAnalyticsParameters(awsIotAnalyticsParameters)
            return
        }
        let jiraParametersDecoded = try values.decodeIfPresent(JiraParameters.self, forKey: .jiraParameters)
        if let jiraParameters = jiraParametersDecoded {
            self = .jiraParameters(jiraParameters)
            return
        }
        let mariaDbParametersDecoded = try values.decodeIfPresent(MariaDbParameters.self, forKey: .mariaDbParameters)
        if let mariaDbParameters = mariaDbParametersDecoded {
            self = .mariaDbParameters(mariaDbParameters)
            return
        }
        let mySqlParametersDecoded = try values.decodeIfPresent(MySqlParameters.self, forKey: .mySqlParameters)
        if let mySqlParameters = mySqlParametersDecoded {
            self = .mySqlParameters(mySqlParameters)
            return
        }
        let oracleParametersDecoded = try values.decodeIfPresent(OracleParameters.self, forKey: .oracleParameters)
        if let oracleParameters = oracleParametersDecoded {
            self = .oracleParameters(oracleParameters)
            return
        }
        let postgreSqlParametersDecoded = try values.decodeIfPresent(PostgreSqlParameters.self, forKey: .postgreSqlParameters)
        if let postgreSqlParameters = postgreSqlParametersDecoded {
            self = .postgreSqlParameters(postgreSqlParameters)
            return
        }
        let prestoParametersDecoded = try values.decodeIfPresent(PrestoParameters.self, forKey: .prestoParameters)
        if let prestoParameters = prestoParametersDecoded {
            self = .prestoParameters(prestoParameters)
            return
        }
        let rdsParametersDecoded = try values.decodeIfPresent(RdsParameters.self, forKey: .rdsParameters)
        if let rdsParameters = rdsParametersDecoded {
            self = .rdsParameters(rdsParameters)
            return
        }
        let redshiftParametersDecoded = try values.decodeIfPresent(RedshiftParameters.self, forKey: .redshiftParameters)
        if let redshiftParameters = redshiftParametersDecoded {
            self = .redshiftParameters(redshiftParameters)
            return
        }
        let s3ParametersDecoded = try values.decodeIfPresent(S3Parameters.self, forKey: .s3Parameters)
        if let s3Parameters = s3ParametersDecoded {
            self = .s3Parameters(s3Parameters)
            return
        }
        let serviceNowParametersDecoded = try values.decodeIfPresent(ServiceNowParameters.self, forKey: .serviceNowParameters)
        if let serviceNowParameters = serviceNowParametersDecoded {
            self = .serviceNowParameters(serviceNowParameters)
            return
        }
        let snowflakeParametersDecoded = try values.decodeIfPresent(SnowflakeParameters.self, forKey: .snowflakeParameters)
        if let snowflakeParameters = snowflakeParametersDecoded {
            self = .snowflakeParameters(snowflakeParameters)
            return
        }
        let sparkParametersDecoded = try values.decodeIfPresent(SparkParameters.self, forKey: .sparkParameters)
        if let sparkParameters = sparkParametersDecoded {
            self = .sparkParameters(sparkParameters)
            return
        }
        let sqlServerParametersDecoded = try values.decodeIfPresent(SqlServerParameters.self, forKey: .sqlServerParameters)
        if let sqlServerParameters = sqlServerParametersDecoded {
            self = .sqlServerParameters(sqlServerParameters)
            return
        }
        let teradataParametersDecoded = try values.decodeIfPresent(TeradataParameters.self, forKey: .teradataParameters)
        if let teradataParameters = teradataParametersDecoded {
            self = .teradataParameters(teradataParameters)
            return
        }
        let twitterParametersDecoded = try values.decodeIfPresent(TwitterParameters.self, forKey: .twitterParameters)
        if let twitterParameters = twitterParametersDecoded {
            self = .twitterParameters(twitterParameters)
            return
        }
        self = .sdkUnknown("")
    }
}