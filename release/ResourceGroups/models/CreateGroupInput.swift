// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateGroupInput: Equatable {
    /// <p>A configuration associates the resource group with an AWS service and specifies how
    ///             the service can interact with the resources in the group. A configuration is an array of
    ///                 <a>GroupConfigurationItem</a> elements. For details about the syntax of
    ///             service configurations, see <a href="https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html">Service configurations for resource
    ///                 groups</a>.</p>
    ///         <note>
    ///             <p>A resource group can contain either a <code>Configuration</code> or a
    ///                     <code>ResourceQuery</code>, but not both.</p>
    ///         </note>
    public let configuration: [GroupConfigurationItem]?
    /// <p>The description of the resource group. Descriptions can consist of letters, numbers,
    ///             hyphens, underscores, periods, and spaces.</p>
    public let description: String?
    /// <p>The name of the group, which is the identifier of the group in other operations. You
    ///             can't change the name of a resource group after you create it. A resource group name can
    ///             consist of letters, numbers, hyphens, periods, and underscores. The name cannot start
    ///             with <code>AWS</code> or <code>aws</code>; these are reserved. A resource group name
    ///             must be unique within each AWS Region in your AWS account.</p>
    public let name: String?
    /// <p>The resource query that determines which AWS resources are members of this group.
    ///             For more information about resource queries, see <a href="https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag">Create
    ///                 a tag-based group in Resource Groups</a>. </p>
    ///         <note>
    ///             <p>A resource group can contain either a <code>ResourceQuery</code> or a
    ///                     <code>Configuration</code>, but not both.</p>
    ///         </note>
    public let resourceQuery: ResourceQuery?
    /// <p>The tags to add to the group. A tag is key-value pair string.</p>
    public let tags: [String:String]?

    public init (
        configuration: [GroupConfigurationItem]? = nil,
        description: String? = nil,
        name: String? = nil,
        resourceQuery: ResourceQuery? = nil,
        tags: [String:String]? = nil
    )
    {
        self.configuration = configuration
        self.description = description
        self.name = name
        self.resourceQuery = resourceQuery
        self.tags = tags
    }
}

extension CreateGroupInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateGroupInput(configuration: \(String(describing: configuration)), description: \(String(describing: description)), name: \(String(describing: name)), resourceQuery: \(String(describing: resourceQuery)), tags: \(String(describing: tags)))"}
}