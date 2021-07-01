// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Specifies a batch of events to process.</p>
public struct EventsRequest: Equatable {
    /// <p>The batch of events to process. For each item in a batch, the endpoint ID acts as a key that has an EventsBatch object as its value.</p>
    public let batchItem: [String:EventsBatch]?

    public init (
        batchItem: [String:EventsBatch]? = nil
    )
    {
        self.batchItem = batchItem
    }
}

extension EventsRequest: CustomDebugStringConvertible {
    public var debugDescription: String {
        "EventsRequest(batchItem: \(String(describing: batchItem)))"}
}