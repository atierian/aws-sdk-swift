// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes product information for a license configuration.</p>
public struct ProductInformation: Equatable {
    /// <p>A Product information filter consists of a <code>ProductInformationFilterComparator</code> which is a logical operator, a <code>ProductInformationFilterName</code> which specifies the type of filter being declared, and a <code>ProductInformationFilterValue</code> that specifies the value to filter on. </p>
    ///          <p>Accepted values for <code>ProductInformationFilterName</code> are listed here along with descriptions and valid options for <code>ProductInformationFilterComparator</code>. </p>
    ///          <p>The following filters and are supported when the resource type
    ///          is <code>SSM_MANAGED</code>:</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>Application Name</code> - The name of the application.
    ///                Logical operator is <code>EQUALS</code>.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>Application Publisher</code> - The publisher of the application.
    ///                Logical operator is <code>EQUALS</code>.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>Application Version</code> - The version of the application.
    ///                Logical operator is <code>EQUALS</code>.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>Platform Name</code> - The name of the platform.
    ///                Logical operator is <code>EQUALS</code>.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>Platform Type</code> - The platform type.
    ///                Logical operator is <code>EQUALS</code>.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>Tag:key</code> - The key of a tag attached to an AWS resource you wish to exclude from automated discovery. Logical operator is <code>NOT_EQUALS</code>.  The key for your tag must be appended to <code>Tag:</code> following the example: <code>Tag:name-of-your-key</code>. <code>ProductInformationFilterValue</code> is optional if you are not using values for the key.
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>AccountId</code> - The 12-digit ID of an AWS account you wish to exclude from automated discovery.
    ///                Logical operator is <code>NOT_EQUALS</code>.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>License Included</code> - The type of license included.
    ///                Logical operators are <code>EQUALS</code> and <code>NOT_EQUALS</code>.
    ///                Possible values are: <code>sql-server-enterprise</code> |
    ///                <code>sql-server-standard</code> |
    ///                <code>sql-server-web</code> |
    ///                <code>windows-server-datacenter</code>.</p>
    ///             </li>
    ///          </ul>
    ///          <p>The following filters and logical operators are supported when the resource type
    ///          is <code>RDS</code>:</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>Engine Edition</code> - The edition of the database engine.
    ///                Logical operator is <code>EQUALS</code>.
    ///                Possible values are: <code>oracle-ee</code> | <code>oracle-se</code> | <code>oracle-se1</code> | <code>oracle-se2</code>.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>License Pack</code> - The license pack.
    ///                Logical operator is <code>EQUALS</code>.
    ///                Possible values are: <code>data guard</code> |
    ///                <code>diagnostic pack sqlt</code> |
    ///                <code>tuning pack sqlt</code> |
    ///                <code>ols</code> |
    ///                <code>olap</code>.</p>
    ///             </li>
    ///          </ul>
    public let productInformationFilterList: [ProductInformationFilter]?
    /// <p>Resource type. The possible values are <code>SSM_MANAGED</code> | <code>RDS</code>.</p>
    public let resourceType: String?

    public init (
        productInformationFilterList: [ProductInformationFilter]? = nil,
        resourceType: String? = nil
    )
    {
        self.productInformationFilterList = productInformationFilterList
        self.resourceType = resourceType
    }
}

extension ProductInformation: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ProductInformation(productInformationFilterList: \(String(describing: productInformationFilterList)), resourceType: \(String(describing: resourceType)))"}
}