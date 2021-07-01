// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UngroupResourcesOutputResponse: Equatable {
    /// <p>A list of any resources that failed to be removed from the group by this
    ///             operation.</p>
    public let failed: [FailedResource]?
    /// <p>A list of any resources that are still in the process of being removed from the group
    ///             by this operation. These pending removals continue asynchronously. You can check the
    ///             status of pending removals by using the <code>
    ///                <a>ListGroupResources</a>
    ///             </code> operation. After the resource is successfully removed, it no longer
    ///             appears in the response.</p>
    public let pending: [PendingResource]?
    /// <p>A list of resources that were successfully removed from the group by this
    ///             operation.</p>
    public let succeeded: [String]?

    public init (
        failed: [FailedResource]? = nil,
        pending: [PendingResource]? = nil,
        succeeded: [String]? = nil
    )
    {
        self.failed = failed
        self.pending = pending
        self.succeeded = succeeded
    }
}

extension UngroupResourcesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UngroupResourcesOutputResponse(failed: \(String(describing: failed)), pending: \(String(describing: pending)), succeeded: \(String(describing: succeeded)))"}
}