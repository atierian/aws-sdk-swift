// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Specifies the default alarm state.
/// The configuration applies to all alarms that were created based on this alarm model.</p>
public struct InitializationConfiguration: Equatable {
    /// <p>The value must be <code>TRUE</code> or <code>FALSE</code>. If <code>FALSE</code>, all
    ///       alarm instances created based on the alarm model are activated. The default value is
    ///         <code>TRUE</code>.</p>
    public let disabledOnInitialization: Bool?

    public init (
        disabledOnInitialization: Bool? = nil
    )
    {
        self.disabledOnInitialization = disabledOnInitialization
    }
}

extension InitializationConfiguration: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InitializationConfiguration(disabledOnInitialization: \(String(describing: disabledOnInitialization)))"}
}