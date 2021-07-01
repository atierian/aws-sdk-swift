// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A sample configuration for profile jobs only, which determines the number of rows on which the
///             profile job is run. If a <code>JobSample</code> value isn't provided, the
///             default is used. The default value is CUSTOM_ROWS for the mode parameter and
///             20,000 for the size parameter.</p>
public struct JobSample: Equatable {
    /// <p>A value that determines whether the profile job is run on the entire dataset or a
    ///             specified number of rows. This value must be one of the following:</p>
    ///         <ul>
    ///             <li>
    ///                 <p>FULL_DATASET - The profile job is run on the entire dataset.</p>
    ///             </li>
    ///             <li>
    ///                 <p>CUSTOM_ROWS - The profile job is run on the number of rows specified in the
    ///                     <code>Size</code> parameter.</p>
    ///             </li>
    ///          </ul>
    public let mode: SampleMode?
    /// <p>The <code>Size</code> parameter is only required when the mode is CUSTOM_ROWS. The
    ///             profile job is run on the specified number of rows. The maximum value for size is
    ///             Long.MAX_VALUE.</p>
    ///         <p>Long.MAX_VALUE = 9223372036854775807</p>
    public let size: Int?

    public init (
        mode: SampleMode? = nil,
        size: Int? = nil
    )
    {
        self.mode = mode
        self.size = size
    }
}

extension JobSample: CustomDebugStringConvertible {
    public var debugDescription: String {
        "JobSample(mode: \(String(describing: mode)), size: \(String(describing: size)))"}
}