// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateDataSourceFromRedshiftInput: Equatable {
    /// <p>The compute statistics for a <code>DataSource</code>. The statistics are generated from the observation data referenced by
    ///             a <code>DataSource</code>. Amazon ML uses the statistics internally during <code>MLModel</code> training.
    ///            This parameter must be set to <code>true</code> if the <code>DataSource</code> needs to
    ///           be used for <code>MLModel</code> training.</p>
    public let computeStatistics: Bool
    /// <p>A user-supplied ID that uniquely identifies the <code>DataSource</code>.</p>
    public let dataSourceId: String?
    /// <p>A user-supplied name or description of the <code>DataSource</code>. </p>
    public let dataSourceName: String?
    /// <p>The data specification of an Amazon Redshift <code>DataSource</code>:</p>
    ///         <ul>
    ///             <li>
    ///                <p>DatabaseInformation -</p>
    ///                <ul>
    ///                   <li>
    ///                      <p>
    ///                         <code>DatabaseName</code> - The name of the Amazon Redshift database.</p>
    ///                   </li>
    ///                   <li>
    ///                      <p>
    ///                         <code> ClusterIdentifier</code> - The unique ID for the Amazon Redshift cluster.</p>
    ///                   </li>
    ///                </ul>
    ///             </li>
    ///             <li>
    ///                <p>DatabaseCredentials - The AWS Identity and Access Management (IAM) credentials that are used to connect to the Amazon Redshift database.</p>
    ///             </li>
    ///             <li>
    ///                <p>SelectSqlQuery - The query that is used to retrieve the observation data for the
    /// 			<code>Datasource</code>.</p>
    ///             </li>
    ///             <li>
    ///                <p>S3StagingLocation - The Amazon Simple Storage Service (Amazon S3) location for staging Amazon
    ///                     Redshift data. The data retrieved from Amazon Redshift using
    ///                         the <code>SelectSqlQuery</code> query is stored in this location.</p>
    ///             </li>
    ///             <li>
    ///                <p>DataSchemaUri - The Amazon S3 location of the <code>DataSchema</code>.</p>
    ///             </li>
    ///             <li>
    ///                <p>DataSchema - A JSON string representing the schema. This is not required if <code>DataSchemaUri</code> is specified. </p>
    ///             </li>
    ///             <li>
    ///                <p>DataRearrangement - A JSON string that represents the splitting and rearrangement requirements for the <code>DataSource</code>.</p>
    ///                <p> Sample -
    ///             <code> "{\"splitting\":{\"percentBegin\":10,\"percentEnd\":60}}"</code>
    ///                </p>
    ///             </li>
    ///          </ul>
    public let dataSpec: RedshiftDataSpec?
    /// <p>A fully specified role Amazon Resource Name (ARN). Amazon ML assumes the role on behalf of the user to create the following:</p>
    ///
    ///            <ul>
    ///             <li>
    ///                <p>A security group to allow Amazon ML to execute the <code>SelectSqlQuery</code> query on an Amazon Redshift cluster</p>
    ///             </li>
    ///             <li>
    ///                <p>An Amazon S3 bucket policy to grant Amazon ML read/write permissions on the <code>S3StagingLocation</code>
    ///                </p>
    ///             </li>
    ///          </ul>
    public let roleARN: String?

    public init (
        computeStatistics: Bool = false,
        dataSourceId: String? = nil,
        dataSourceName: String? = nil,
        dataSpec: RedshiftDataSpec? = nil,
        roleARN: String? = nil
    )
    {
        self.computeStatistics = computeStatistics
        self.dataSourceId = dataSourceId
        self.dataSourceName = dataSourceName
        self.dataSpec = dataSpec
        self.roleARN = roleARN
    }
}

extension CreateDataSourceFromRedshiftInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateDataSourceFromRedshiftInput(computeStatistics: \(String(describing: computeStatistics)), dataSourceId: \(String(describing: dataSourceId)), dataSourceName: \(String(describing: dataSourceName)), dataSpec: \(String(describing: dataSpec)), roleARN: \(String(describing: roleARN)))"}
}