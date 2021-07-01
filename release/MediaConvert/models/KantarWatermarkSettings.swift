// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Use these settings only when you use Kantar watermarking. Specify the values that MediaConvert uses to generate and place Kantar watermarks in your output audio. These settings apply to every output in your job. In addition to specifying these values, you also need to store your Kantar credentials in AWS Secrets Manager. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/kantar-watermarking.html.
public struct KantarWatermarkSettings: Equatable {
    /// Provide an audio channel name from your Kantar audio license.
    public let channelName: String?
    /// Specify a unique identifier for Kantar to use for this piece of content.
    public let contentReference: String?
    /// Provide the name of the AWS Secrets Manager secret where your Kantar credentials are stored. Note that your MediaConvert service role must provide access to this secret. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/granting-permissions-for-mediaconvert-to-access-secrets-manager-secret.html. For instructions on creating a secret, see https://docs.aws.amazon.com/secretsmanager/latest/userguide/tutorials_basic.html, in the AWS Secrets Manager User Guide.
    public let credentialsSecretName: String?
    /// Optional. Specify an offset, in whole seconds, from the start of your output and the beginning of the watermarking. When you don't specify an offset, Kantar defaults to zero.
    public let fileOffset: Double
    /// Provide your Kantar license ID number. You should get this number from Kantar.
    public let kantarLicenseId: Int
    /// Provide the HTTPS endpoint to the Kantar server. You should get this endpoint from Kantar.
    public let kantarServerUrl: String?
    /// Optional. Specify the Amazon S3 bucket where you want MediaConvert to store your Kantar watermark XML logs. When you don't specify a bucket, MediaConvert doesn't save these logs. Note that your MediaConvert service role must provide access to this location. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/iam-role.html
    public let logDestination: String?
    /// You can optionally use this field to specify the first timestamp that Kantar embeds during watermarking. Kantar suggests that you be very cautious when using this Kantar feature, and that you use it only on channels that are managed specifically for use with this feature by your Audience Measurement Operator. For more information about this feature, contact Kantar technical support.
    public let metadata3: String?
    /// Additional metadata that MediaConvert sends to Kantar. Maximum length is 50 characters.
    public let metadata4: String?
    /// Additional metadata that MediaConvert sends to Kantar. Maximum length is 50 characters.
    public let metadata5: String?
    /// Additional metadata that MediaConvert sends to Kantar. Maximum length is 50 characters.
    public let metadata6: String?
    /// Additional metadata that MediaConvert sends to Kantar. Maximum length is 50 characters.
    public let metadata7: String?
    /// Additional metadata that MediaConvert sends to Kantar. Maximum length is 50 characters.
    public let metadata8: String?

    public init (
        channelName: String? = nil,
        contentReference: String? = nil,
        credentialsSecretName: String? = nil,
        fileOffset: Double = 0.0,
        kantarLicenseId: Int = 0,
        kantarServerUrl: String? = nil,
        logDestination: String? = nil,
        metadata3: String? = nil,
        metadata4: String? = nil,
        metadata5: String? = nil,
        metadata6: String? = nil,
        metadata7: String? = nil,
        metadata8: String? = nil
    )
    {
        self.channelName = channelName
        self.contentReference = contentReference
        self.credentialsSecretName = credentialsSecretName
        self.fileOffset = fileOffset
        self.kantarLicenseId = kantarLicenseId
        self.kantarServerUrl = kantarServerUrl
        self.logDestination = logDestination
        self.metadata3 = metadata3
        self.metadata4 = metadata4
        self.metadata5 = metadata5
        self.metadata6 = metadata6
        self.metadata7 = metadata7
        self.metadata8 = metadata8
    }
}

extension KantarWatermarkSettings: CustomDebugStringConvertible {
    public var debugDescription: String {
        "KantarWatermarkSettings(channelName: \(String(describing: channelName)), contentReference: \(String(describing: contentReference)), credentialsSecretName: \(String(describing: credentialsSecretName)), fileOffset: \(String(describing: fileOffset)), kantarLicenseId: \(String(describing: kantarLicenseId)), kantarServerUrl: \(String(describing: kantarServerUrl)), logDestination: \(String(describing: logDestination)), metadata3: \(String(describing: metadata3)), metadata4: \(String(describing: metadata4)), metadata5: \(String(describing: metadata5)), metadata6: \(String(describing: metadata6)), metadata7: \(String(describing: metadata7)), metadata8: \(String(describing: metadata8)))"}
}