// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains the dimension configuration to use when you publish email sending events to
///             Amazon CloudWatch.</p>
///         <p>For information about publishing email sending events to Amazon CloudWatch, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
public struct CloudWatchDimensionConfiguration: Equatable {
    /// <p>The default value of the dimension that is published to Amazon CloudWatch if you do not provide
    ///             the value of the dimension when you send an email. The default value must:</p>
    ///         <ul>
    ///             <li>
    ///                 <p>This value can only contain ASCII letters (a-z, A-Z), numbers (0-9),
    ///                     underscores (_), or dashes (-).</p>
    ///             </li>
    ///             <li>
    ///                 <p>Contain less than 256 characters.</p>
    ///             </li>
    ///          </ul>
    public let defaultDimensionValue: String?
    /// <p>The name of an Amazon CloudWatch dimension associated with an email sending metric. The name
    ///             must:</p>
    ///         <ul>
    ///             <li>
    ///                 <p>This value can only contain ASCII letters (a-z, A-Z), numbers (0-9),
    ///                     underscores (_), or dashes (-).</p>
    ///             </li>
    ///             <li>
    ///                 <p>Contain less than 256 characters.</p>
    ///             </li>
    ///          </ul>
    public let dimensionName: String?
    /// <p>The place where Amazon SES finds the value of a dimension to publish to Amazon CloudWatch. If you
    ///             want Amazon SES to use the message tags that you specify using an
    ///                 <code>X-SES-MESSAGE-TAGS</code> header or a parameter to the
    ///                 <code>SendEmail</code>/<code>SendRawEmail</code> API, choose
    ///             <code>messageTag</code>. If you want Amazon SES to use your own email headers, choose
    ///                 <code>emailHeader</code>.</p>
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