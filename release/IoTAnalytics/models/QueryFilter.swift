// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Information that is used to filter message data, to segregate it according to the
///       timeframe in which it arrives.</p>
public struct QueryFilter: Equatable {
    /// <p>Used to limit data to that which has arrived since the last execution of the
    ///       action.</p>
    public let deltaTime: DeltaTime?

    public init (
        deltaTime: DeltaTime? = nil
    )
    {
        self.deltaTime = deltaTime
    }
}

extension QueryFilter: CustomDebugStringConvertible {
    public var debugDescription: String {
        "QueryFilter(deltaTime: \(String(describing: deltaTime)))"}
}