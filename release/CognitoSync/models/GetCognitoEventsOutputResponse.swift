// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The response from the GetCognitoEvents request</p>
public struct GetCognitoEventsOutputResponse: Equatable {
    /// <p>The Cognito Events returned from the GetCognitoEvents request</p>
    public let events: [String:String]?

    public init (
        events: [String:String]? = nil
    )
    {
        self.events = events
    }
}

extension GetCognitoEventsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetCognitoEventsOutputResponse(events: \(String(describing: events)))"}
}