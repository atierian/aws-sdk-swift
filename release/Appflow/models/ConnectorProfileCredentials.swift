// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>
///  The connector-specific credentials required by a connector.
/// </p>
public struct ConnectorProfileCredentials: Equatable {
    /// <p>
    ///   The connector-specific credentials required when using Amplitude.
    /// </p>
    public let amplitude: AmplitudeConnectorProfileCredentials?
    /// <p>
    ///   The connector-specific credentials required when using Datadog.
    /// </p>
    public let datadog: DatadogConnectorProfileCredentials?
    /// <p>
    ///   The connector-specific credentials required when using Dynatrace.
    /// </p>
    public let dynatrace: DynatraceConnectorProfileCredentials?
    /// <p>
    ///   The connector-specific credentials required when using Google Analytics.
    /// </p>
    public let googleAnalytics: GoogleAnalyticsConnectorProfileCredentials?
    /// <p>
    ///       The connector-specific credentials required when using Amazon Honeycode.
    ///     </p>
    public let honeycode: HoneycodeConnectorProfileCredentials?
    /// <p>
    ///   The connector-specific credentials required when using Infor Nexus.
    /// </p>
    public let inforNexus: InforNexusConnectorProfileCredentials?
    /// <p>
    ///   The connector-specific credentials required when using Marketo.
    /// </p>
    public let marketo: MarketoConnectorProfileCredentials?
    /// <p>
    ///   The connector-specific credentials required when using Amazon Redshift.
    /// </p>
    public let redshift: RedshiftConnectorProfileCredentials?
    /// <p>
    ///   The connector-specific credentials required when using Salesforce.
    /// </p>
    public let salesforce: SalesforceConnectorProfileCredentials?
    /// <p>
    ///   The connector-specific credentials required when using ServiceNow.
    /// </p>
    public let serviceNow: ServiceNowConnectorProfileCredentials?
    /// <p>
    ///   The connector-specific credentials required when using Singular.
    /// </p>
    public let singular: SingularConnectorProfileCredentials?
    /// <p>
    ///   The connector-specific credentials required when using Slack.
    /// </p>
    public let slack: SlackConnectorProfileCredentials?
    /// <p>
    ///   The connector-specific credentials required when using Snowflake.
    /// </p>
    public let snowflake: SnowflakeConnectorProfileCredentials?
    /// <p>
    ///   The connector-specific credentials required when using Trend Micro.
    /// </p>
    public let trendmicro: TrendmicroConnectorProfileCredentials?
    /// <p>
    ///   The connector-specific credentials required when using Veeva.
    /// </p>
    public let veeva: VeevaConnectorProfileCredentials?
    /// <p>
    ///   The connector-specific credentials required when using Zendesk.
    /// </p>
    public let zendesk: ZendeskConnectorProfileCredentials?

    public init (
        amplitude: AmplitudeConnectorProfileCredentials? = nil,
        datadog: DatadogConnectorProfileCredentials? = nil,
        dynatrace: DynatraceConnectorProfileCredentials? = nil,
        googleAnalytics: GoogleAnalyticsConnectorProfileCredentials? = nil,
        honeycode: HoneycodeConnectorProfileCredentials? = nil,
        inforNexus: InforNexusConnectorProfileCredentials? = nil,
        marketo: MarketoConnectorProfileCredentials? = nil,
        redshift: RedshiftConnectorProfileCredentials? = nil,
        salesforce: SalesforceConnectorProfileCredentials? = nil,
        serviceNow: ServiceNowConnectorProfileCredentials? = nil,
        singular: SingularConnectorProfileCredentials? = nil,
        slack: SlackConnectorProfileCredentials? = nil,
        snowflake: SnowflakeConnectorProfileCredentials? = nil,
        trendmicro: TrendmicroConnectorProfileCredentials? = nil,
        veeva: VeevaConnectorProfileCredentials? = nil,
        zendesk: ZendeskConnectorProfileCredentials? = nil
    )
    {
        self.amplitude = amplitude
        self.datadog = datadog
        self.dynatrace = dynatrace
        self.googleAnalytics = googleAnalytics
        self.honeycode = honeycode
        self.inforNexus = inforNexus
        self.marketo = marketo
        self.redshift = redshift
        self.salesforce = salesforce
        self.serviceNow = serviceNow
        self.singular = singular
        self.slack = slack
        self.snowflake = snowflake
        self.trendmicro = trendmicro
        self.veeva = veeva
        self.zendesk = zendesk
    }
}

extension ConnectorProfileCredentials: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ConnectorProfileCredentials(amplitude: \(String(describing: amplitude)), datadog: \(String(describing: datadog)), dynatrace: \(String(describing: dynatrace)), googleAnalytics: \(String(describing: googleAnalytics)), honeycode: \(String(describing: honeycode)), inforNexus: \(String(describing: inforNexus)), marketo: \(String(describing: marketo)), redshift: \(String(describing: redshift)), salesforce: \(String(describing: salesforce)), serviceNow: \(String(describing: serviceNow)), singular: \(String(describing: singular)), slack: \(String(describing: slack)), snowflake: \(String(describing: snowflake)), trendmicro: \(String(describing: trendmicro)), veeva: \(String(describing: veeva)), zendesk: \(String(describing: zendesk)))"}
}