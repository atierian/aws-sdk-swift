// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p></p>
public struct DeleteDBSubnetGroupInput: Equatable {
    /// <p>The name of the database subnet group to delete.</p>
    ///          <note>
    ///             <p>You can't delete the default subnet group.</p>
    ///          </note>
    ///          <p>Constraints:</p>
    ///          <p>Constraints: Must match the name of an existing DBSubnetGroup. Must not be default.</p>
    ///          <p>Example: <code>mySubnetgroup</code>
    ///          </p>
    public let dBSubnetGroupName: String?

    public init (
        dBSubnetGroupName: String? = nil
    )
    {
        self.dBSubnetGroupName = dBSubnetGroupName
    }
}

extension DeleteDBSubnetGroupInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteDBSubnetGroupInput(dBSubnetGroupName: \(String(describing: dBSubnetGroupName)))"}
}