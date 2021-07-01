// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct StartStudioSSOConfigurationRepairOutputResponse: Equatable {
    /// <p>Information about a studio.</p>
    public let studio: Studio?

    public init (
        studio: Studio? = nil
    )
    {
        self.studio = studio
    }
}

extension StartStudioSSOConfigurationRepairOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "StartStudioSSOConfigurationRepairOutputResponse(studio: \(String(describing: studio)))"}
}