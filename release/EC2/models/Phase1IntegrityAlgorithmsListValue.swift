// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The integrity algorithm for phase 1 IKE negotiations.</p>
public struct Phase1IntegrityAlgorithmsListValue: Equatable {
    /// <p>The value for the integrity algorithm.</p>
    public let value: String?

    public init (
        value: String? = nil
    )
    {
        self.value = value
    }
}

extension Phase1IntegrityAlgorithmsListValue: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Phase1IntegrityAlgorithmsListValue(value: \(String(describing: value)))"}
}