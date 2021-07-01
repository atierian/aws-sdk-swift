// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateJourneyOutputResponse: Equatable {
    /// <p>Provides information about the status, configuration, and other settings for a journey.</p>
    public let journeyResponse: JourneyResponse?

    public init (
        journeyResponse: JourneyResponse? = nil
    )
    {
        self.journeyResponse = journeyResponse
    }
}

extension UpdateJourneyOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateJourneyOutputResponse(journeyResponse: \(String(describing: journeyResponse)))"}
}