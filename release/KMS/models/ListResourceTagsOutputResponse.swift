// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListResourceTagsOutputResponse: Equatable {
    /// <p>When <code>Truncated</code> is true, this element is present and contains the
    ///     value to use for the <code>Marker</code> parameter in a subsequent request.</p>
    ///          <p>Do not assume or infer any information from this value.</p>
    public let nextMarker: String?
    /// <p>A list of tags. Each tag consists of a tag key and a tag value.</p>
    public let tags: [Tag]?
    /// <p>A flag that indicates whether there are more items in the list. When this
    ///     value is true, the list in this response is truncated. To get more items, pass the value of
    ///     the <code>NextMarker</code> element in thisresponse to the <code>Marker</code> parameter in a
    ///     subsequent request.</p>
    public let truncated: Bool

    public init (
        nextMarker: String? = nil,
        tags: [Tag]? = nil,
        truncated: Bool = false
    )
    {
        self.nextMarker = nextMarker
        self.tags = tags
        self.truncated = truncated
    }
}

extension ListResourceTagsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListResourceTagsOutputResponse(nextMarker: \(String(describing: nextMarker)), tags: \(String(describing: tags)), truncated: \(String(describing: truncated)))"}
}