// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListJournalS3ExportsForLedgerOutputResponse: Equatable {
    /// <p>The array of journal export job descriptions that are associated with the specified
    ///          ledger.</p>
    public let journalS3Exports: [JournalS3ExportDescription]?
    /// <ul>
    ///             <li>
    ///                <p>If <code>NextToken</code> is empty, then the last page of results has been
    ///                processed and there are no more results to be retrieved.</p>
    ///             </li>
    ///             <li>
    ///                <p>If <code>NextToken</code> is <i>not</i> empty, then there are more
    ///                results available. To retrieve the next page of results, use the value of
    ///                   <code>NextToken</code> in a subsequent <code>ListJournalS3ExportsForLedger</code>
    ///                call.</p>
    ///             </li>
    ///          </ul>
    public let nextToken: String?

    public init (
        journalS3Exports: [JournalS3ExportDescription]? = nil,
        nextToken: String? = nil
    )
    {
        self.journalS3Exports = journalS3Exports
        self.nextToken = nextToken
    }
}

extension ListJournalS3ExportsForLedgerOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListJournalS3ExportsForLedgerOutputResponse(journalS3Exports: \(String(describing: journalS3Exports)), nextToken: \(String(describing: nextToken)))"}
}