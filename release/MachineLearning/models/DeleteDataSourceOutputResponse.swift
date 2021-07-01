// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p> Represents the output of a <code>DeleteDataSource</code> operation.</p>
public struct DeleteDataSourceOutputResponse: Equatable {
    /// <p>A user-supplied ID that uniquely identifies the <code>DataSource</code>. This value should be identical to the value of the <code>DataSourceID</code> in the request.</p>
    public let dataSourceId: String?

    public init (
        dataSourceId: String? = nil
    )
    {
        self.dataSourceId = dataSourceId
    }
}

extension DeleteDataSourceOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteDataSourceOutputResponse(dataSourceId: \(String(describing: dataSourceId)))"}
}