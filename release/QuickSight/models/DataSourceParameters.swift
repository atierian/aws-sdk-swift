// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The parameters that Amazon QuickSight uses to connect to your underlying data source.
///             This is a variant type structure. For this structure to be valid, only one of the
///             attributes can be non-null.</p>
public enum DataSourceParameters: Equatable {
    /// <p>Amazon Elasticsearch Service parameters.</p>
    case amazonElasticsearchParameters(AmazonElasticsearchParameters?)
    /// <p>Amazon Athena parameters.</p>
    case athenaParameters(AthenaParameters?)
    /// <p>Amazon Aurora MySQL parameters.</p>
    case auroraParameters(AuroraParameters?)
    /// <p>Aurora PostgreSQL parameters.</p>
    case auroraPostgreSqlParameters(AuroraPostgreSqlParameters?)
    /// <p>AWS IoT Analytics parameters.</p>
    case awsIotAnalyticsParameters(AwsIotAnalyticsParameters?)
    /// <p>Jira parameters.</p>
    case jiraParameters(JiraParameters?)
    /// <p>MariaDB parameters.</p>
    case mariaDbParameters(MariaDbParameters?)
    /// <p>MySQL parameters.</p>
    case mySqlParameters(MySqlParameters?)
    /// <p>Oracle parameters.</p>
    case oracleParameters(OracleParameters?)
    /// <p>PostgreSQL parameters.</p>
    case postgreSqlParameters(PostgreSqlParameters?)
    /// <p>Presto parameters.</p>
    case prestoParameters(PrestoParameters?)
    /// <p>Amazon RDS parameters.</p>
    case rdsParameters(RdsParameters?)
    /// <p>Amazon Redshift parameters.</p>
    case redshiftParameters(RedshiftParameters?)
    /// <p>S3 parameters.</p>
    case s3Parameters(S3Parameters?)
    /// <p>ServiceNow parameters.</p>
    case serviceNowParameters(ServiceNowParameters?)
    /// <p>Snowflake parameters.</p>
    case snowflakeParameters(SnowflakeParameters?)
    /// <p>Spark parameters.</p>
    case sparkParameters(SparkParameters?)
    /// <p>SQL Server parameters.</p>
    case sqlServerParameters(SqlServerParameters?)
    /// <p>Teradata parameters.</p>
    case teradataParameters(TeradataParameters?)
    /// <p>Twitter parameters.</p>
    case twitterParameters(TwitterParameters?)
    case sdkUnknown(String?)
}