// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetManagedPrefixListEntriesInput: Equatable {
    /// <p>Checks whether you have the required permissions for the action, without actually making the request,
    ///    and provides an error response. If you have the required permissions, the error response is <code>DryRunOperation</code>.
    ///    Otherwise, it is <code>UnauthorizedOperation</code>.</p>
    public let dryRun: Bool
    /// <p>The maximum number of results to return with a single call.
    /// 	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    public let maxResults: Int
    /// <p>The token for the next page of results.</p>
    public let nextToken: String?
    /// <p>The ID of the prefix list.</p>
    public let prefixListId: String?
    /// <p>The version of the prefix list for which to return the entries. The default is the current version.</p>
    public let targetVersion: Int

    public init (
        dryRun: Bool = false,
        maxResults: Int = 0,
        nextToken: String? = nil,
        prefixListId: String? = nil,
        targetVersion: Int = 0
    )
    {
        self.dryRun = dryRun
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.prefixListId = prefixListId
        self.targetVersion = targetVersion
    }
}

extension GetManagedPrefixListEntriesInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetManagedPrefixListEntriesInput(dryRun: \(String(describing: dryRun)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)), prefixListId: \(String(describing: prefixListId)), targetVersion: \(String(describing: targetVersion)))"}
}