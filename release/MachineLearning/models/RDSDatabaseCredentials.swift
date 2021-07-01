// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The database credentials to connect to a database on an RDS DB instance.</p>
public struct RDSDatabaseCredentials: Equatable {
    /// <p>The password to be used by Amazon ML to connect to a database on an RDS DB instance.
    ///             The password should have sufficient permissions to execute the <code>RDSSelectQuery</code> query.</p>
    public let password: String?
    /// <p>The username to be used by Amazon ML to connect to database on an Amazon RDS instance.
    ///             The username should have sufficient permissions to execute an <code>RDSSelectSqlQuery</code> query.</p>
    public let username: String?

    public init (
        password: String? = nil,
        username: String? = nil
    )
    {
        self.password = password
        self.username = username
    }
}

extension RDSDatabaseCredentials: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RDSDatabaseCredentials(password: \(String(describing: password)), username: \(String(describing: username)))"}
}