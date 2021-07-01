// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct RebootDBInstanceOutputResponse: Equatable {
    /// <p>Contains the details of an Amazon Neptune DB instance.</p>
    ///          <p>This data type is used as a response element in the <a>DescribeDBInstances</a> action.</p>
    public let dBInstance: DBInstance?

    public init (
        dBInstance: DBInstance? = nil
    )
    {
        self.dBInstance = dBInstance
    }
}

extension RebootDBInstanceOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RebootDBInstanceOutputResponse(dBInstance: \(String(describing: dBInstance)))"}
}