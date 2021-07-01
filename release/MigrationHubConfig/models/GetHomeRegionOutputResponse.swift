// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetHomeRegionOutputResponse: Equatable {
    /// <p>The name of the home region of the calling account.</p>
    public let homeRegion: String?

    public init (
        homeRegion: String? = nil
    )
    {
        self.homeRegion = homeRegion
    }
}

extension GetHomeRegionOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetHomeRegionOutputResponse(homeRegion: \(String(describing: homeRegion)))"}
}