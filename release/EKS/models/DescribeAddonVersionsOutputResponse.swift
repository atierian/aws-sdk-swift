// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeAddonVersionsOutputResponse: Equatable {
    /// <p>The list of available versions with Kubernetes version compatibility.</p>
    public let addons: [AddonInfo]?
    /// <p>The <code>nextToken</code> value returned from a previous paginated
    ///                 <code>DescribeAddonVersionsResponse</code> where <code>maxResults</code> was used
    ///             and the results exceeded the value of that parameter. Pagination continues from the end
    ///             of the previous results that returned the <code>nextToken</code> value.</p>
    ///         <note>
    ///             <p>This token should be treated as an opaque identifier that is used only to
    ///                 retrieve the next items in a list and not for other programmatic purposes.</p>
    ///         </note>
    public let nextToken: String?

    public init (
        addons: [AddonInfo]? = nil,
        nextToken: String? = nil
    )
    {
        self.addons = addons
        self.nextToken = nextToken
    }
}

extension DescribeAddonVersionsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeAddonVersionsOutputResponse(addons: \(String(describing: addons)), nextToken: \(String(describing: nextToken)))"}
}