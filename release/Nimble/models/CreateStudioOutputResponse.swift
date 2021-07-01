// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateStudioOutputResponse: Equatable {
    /// <p>Information about a studio.</p>
    public let studio: Studio?

    public init (
        studio: Studio? = nil
    )
    {
        self.studio = studio
    }
}

extension CreateStudioOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateStudioOutputResponse(studio: \(String(describing: studio)))"}
}