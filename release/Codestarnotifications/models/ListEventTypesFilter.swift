// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Information about a filter to apply to the list of returned event types. You can filter
///       by resource type or service name.</p>
public struct ListEventTypesFilter: Equatable {
    /// <p>The system-generated name of the filter type you want to filter by.</p>
    public let name: ListEventTypesFilterName?
    /// <p>The name of the resource type (for example, pipeline) or service name (for example,
    ///       CodePipeline) that you want to filter by.</p>
    public let value: String?

    public init (
        name: ListEventTypesFilterName? = nil,
        value: String? = nil
    )
    {
        self.name = name
        self.value = value
    }
}

extension ListEventTypesFilter: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListEventTypesFilter(name: \(String(describing: name)), value: \(String(describing: value)))"}
}