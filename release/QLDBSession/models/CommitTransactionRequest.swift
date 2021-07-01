// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Contains the details of the transaction to commit.</p>
public struct CommitTransactionRequest: Equatable {
    /// <p>Specifies the commit digest for the transaction to commit. For every active transaction,
    ///          the commit digest must be passed. QLDB validates <code>CommitDigest</code> and rejects
    ///          the commit with an error if the digest computed on the client does not match the digest
    ///          computed by QLDB.</p>
    ///          <p>The purpose of the <code>CommitDigest</code> parameter is to ensure that QLDB commits
    ///          a transaction if and only if the server has processed the exact set of statements sent by
    ///          the client, in the same order that client sent them, and with no duplicates.</p>
    public let commitDigest: Data?
    /// <p>Specifies the transaction ID of the transaction to commit.</p>
    public let transactionId: String?

    public init (
        commitDigest: Data? = nil,
        transactionId: String? = nil
    )
    {
        self.commitDigest = commitDigest
        self.transactionId = transactionId
    }
}

extension CommitTransactionRequest: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CommitTransactionRequest(commitDigest: \(String(describing: commitDigest)), transactionId: \(String(describing: transactionId)))"}
}