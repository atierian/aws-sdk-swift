// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListVirtualMFADevicesInput: Equatable {
    /// <p> The status (<code>Unassigned</code> or <code>Assigned</code>) of the devices to list.
    ///             If you do not specify an <code>AssignmentStatus</code>, the operation defaults to
    ///                 <code>Any</code>, which lists both assigned and unassigned virtual MFA
    ///             devices.,</p>
    public let assignmentStatus: AssignmentStatusType?
    /// <p>Use this parameter only when paginating results and only after
    ///     you receive a response indicating that the results are truncated. Set it to the value of the
    ///     <code>Marker</code> element in the response that you received to indicate where the next call
    ///     should start.</p>
    public let marker: String?
    /// <p>Use this only when paginating results to indicate the
    ///     maximum number of items you want in the response. If additional items exist beyond the maximum
    ///     you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    ///          <p>If you do not include this parameter, the number of items defaults to 100. Note that
    ///     IAM might return fewer results, even when there are more results available. In that case, the
    ///     <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code>
    ///     contains a value to include in the subsequent call that tells the service where to continue
    ///     from.</p>
    public let maxItems: Int?

    public init (
        assignmentStatus: AssignmentStatusType? = nil,
        marker: String? = nil,
        maxItems: Int? = nil
    )
    {
        self.assignmentStatus = assignmentStatus
        self.marker = marker
        self.maxItems = maxItems
    }
}

extension ListVirtualMFADevicesInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListVirtualMFADevicesInput(assignmentStatus: \(String(describing: assignmentStatus)), marker: \(String(describing: marker)), maxItems: \(String(describing: maxItems)))"}
}