// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>An object that defines the dimension configuration to use when you send email events
///             to Amazon CloudWatch.</p>
public struct CloudWatchDimensionConfiguration: Equatable {
    /// <p>The default value of the dimension that is published to Amazon CloudWatch if you don't provide the
    ///             value of the dimension when you send an email. This value has to meet the following
    ///             criteria:</p>
    ///         <ul>
    ///             <li>
    ///                 <p>It can only contain ASCII letters (a–z, A–Z), numbers (0–9),
    ///                     underscores (_), or dashes (-).</p>
    ///             </li>
    ///             <li>
    ///                 <p>It can contain no more than 256 characters.</p>
    ///             </li>
    ///          </ul>
    public let defaultDimensionValue: String?
    /// <p>The name of an Amazon CloudWatch dimension associated with an email sending metric. The name has to
    ///             meet the following criteria:</p>
    ///         <ul>
    ///             <li>
    ///                 <p>It can only contain ASCII letters (a–z, A–Z), numbers (0–9),
    ///                     underscores (_), or dashes (-).</p>
    ///             </li>
    ///             <li>
    ///                 <p>It can contain no more than 256 characters.</p>
    ///             </li>
    ///          </ul>
    public let dimensionName: String?
    /// <p>The location where the Amazon SES API v2 finds the value of a dimension to publish to Amazon CloudWatch. If
    ///             you want to use the message tags that you specify using an
    ///                 <code>X-SES-MESSAGE-TAGS</code> header or a parameter to the <code>SendEmail</code>
    ///             or <code>SendRawEmail</code> API, choose <code>messageTag</code>. If you want to use
    ///             your own email headers, choose <code>emailHeader</code>. If you want to use link tags,
    ///             choose <code>linkTags</code>.</p>
    public let dimensionValueSource: DimensionValueSource?

    public init (
        defaultDimensionValue: String? = nil,
        dimensionName: String? = nil,
        dimensionValueSource: DimensionValueSource? = nil
    )
    {
        self.defaultDimensionValue = defaultDimensionValue
        self.dimensionName = dimensionName
        self.dimensionValueSource = dimensionValueSource
    }
}

extension CloudWatchDimensionConfiguration: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CloudWatchDimensionConfiguration(defaultDimensionValue: \(String(describing: defaultDimensionValue)), dimensionName: \(String(describing: dimensionName)), dimensionValueSource: \(String(describing: dimensionValueSource)))"}
}