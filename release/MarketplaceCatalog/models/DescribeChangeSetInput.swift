// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeChangeSetInput: Equatable {
    /// <p>Required. The catalog related to the request. Fixed value:
    ///             <code>AWSMarketplace</code>
    ///          </p>
    public let catalog: String?
    /// <p>Required. The unique identifier for the <code>StartChangeSet</code> request that you
    ///             want to describe the details for.</p>
    public let changeSetId: String?

    public init (
        catalog: String? = nil,
        changeSetId: String? = nil
    )
    {
        self.catalog = catalog
        self.changeSetId = changeSetId
    }
}

extension DescribeChangeSetInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeChangeSetInput(catalog: \(String(describing: catalog)), changeSetId: \(String(describing: changeSetId)))"}
}