// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Information about valid modifications that you can make to your DB instance.
///             Contains the result of a successful call to the
///             <code>DescribeValidDBInstanceModifications</code> action.
///             You can use this information when you call
///             <code>ModifyDBInstance</code>.
///         </p>
public struct ValidDBInstanceModificationsMessage: Equatable {
    /// <p>Valid storage options for your DB instance.
    ///         </p>
    public let storage: [ValidStorageOptions]?
    /// <p>Valid processor features for your DB instance.
    ///         </p>
    public let validProcessorFeatures: [AvailableProcessorFeature]?

    public init (
        storage: [ValidStorageOptions]? = nil,
        validProcessorFeatures: [AvailableProcessorFeature]? = nil
    )
    {
        self.storage = storage
        self.validProcessorFeatures = validProcessorFeatures
    }
}

extension ValidDBInstanceModificationsMessage: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ValidDBInstanceModificationsMessage(storage: \(String(describing: storage)), validProcessorFeatures: \(String(describing: validProcessorFeatures)))"}
}