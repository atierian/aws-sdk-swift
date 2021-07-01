// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Specifies the integrity algorithm for the VPN tunnel for phase 2 IKE negotiations.</p>
public struct Phase2IntegrityAlgorithmsRequestListValue: Equatable {
    /// <p>The integrity algorithm.</p>
    public let value: String?

    public init (
        value: String? = nil
    )
    {
        self.value = value
    }
}

extension Phase2IntegrityAlgorithmsRequestListValue: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Phase2IntegrityAlgorithmsRequestListValue(value: \(String(describing: value)))"}
}