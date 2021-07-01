// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Limits that are applicable for given storage type.
///     </p>
public struct StorageTypeLimit: Equatable {
    /// <p>
    ///     Name of storage limits that are applicable for given storage type.
    ///     If
    ///     <code>
    ///       <a>StorageType</a>
    ///     </code>
    ///     is ebs, following storage options are applicable
    ///     <ol>
    ///       <li>MinimumVolumeSize</li>
    ///       Minimum amount of volume size that is applicable for given storage type.It can be empty if it is not applicable.
    ///       <li>MaximumVolumeSize</li>
    ///       Maximum amount of volume size that is applicable for given storage type.It can be empty if it is not applicable.
    ///       <li>MaximumIops</li>
    ///       Maximum amount of Iops that is applicable for given storage type.It can be empty if it is not applicable.
    ///       <li>MinimumIops</li>
    ///       Minimum amount of Iops that is applicable for given storage type.It can be empty if it is not applicable.
    ///     </ol>
    ///   </p>
    public let limitName: String?
    /// <p>
    ///       Values for the
    ///       <code>
    ///         <a>StorageTypeLimit$LimitName</a>
    ///       </code>
    ///       .
    ///     </p>
    public let limitValues: [String]?

    public init (
        limitName: String? = nil,
        limitValues: [String]? = nil
    )
    {
        self.limitName = limitName
        self.limitValues = limitValues
    }
}

extension StorageTypeLimit: CustomDebugStringConvertible {
    public var debugDescription: String {
        "StorageTypeLimit(limitName: \(String(describing: limitName)), limitValues: \(String(describing: limitValues)))"}
}