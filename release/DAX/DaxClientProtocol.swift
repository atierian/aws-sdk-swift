// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>DAX is a managed caching service engineered for Amazon DynamoDB. DAX
///             dramatically speeds up database reads by caching frequently-accessed data from DynamoDB, so
///             applications can access that data with sub-millisecond latency. You can create a DAX
///             cluster easily, using the AWS Management Console. With a few simple modifications to
///             your code, your application can begin taking advantage of the DAX cluster and realize
///             significant improvements in read performance.</p>
public protocol DaxClientProtocol {
    /// <p>Creates a DAX cluster. All nodes in the cluster run the same DAX caching software.</p>
    func createCluster(input: CreateClusterInput, completion: @escaping (SdkResult<CreateClusterOutputResponse, CreateClusterOutputError>) -> Void)
    /// <p>Creates a new parameter group. A parameter group is a collection of parameters that
    ///             you apply to all of the nodes in a DAX cluster.</p>
    func createParameterGroup(input: CreateParameterGroupInput, completion: @escaping (SdkResult<CreateParameterGroupOutputResponse, CreateParameterGroupOutputError>) -> Void)
    /// <p>Creates a new subnet group.</p>
    func createSubnetGroup(input: CreateSubnetGroupInput, completion: @escaping (SdkResult<CreateSubnetGroupOutputResponse, CreateSubnetGroupOutputError>) -> Void)
    /// <p>Removes one or more nodes from a DAX cluster.</p>
    ///         <note>
    ///             <p>You cannot use <code>DecreaseReplicationFactor</code> to remove the last node in a DAX cluster. If you need to do this, use <code>DeleteCluster</code> instead.</p>
    ///          </note>
    func decreaseReplicationFactor(input: DecreaseReplicationFactorInput, completion: @escaping (SdkResult<DecreaseReplicationFactorOutputResponse, DecreaseReplicationFactorOutputError>) -> Void)
    /// <p>Deletes a previously provisioned DAX cluster.
    ///                 <i>DeleteCluster</i> deletes all associated nodes, node endpoints
    ///             and the DAX cluster itself. When you receive a successful response from this action,
    ///             DAX immediately begins deleting the cluster; you cannot cancel or revert this
    ///             action.</p>
    func deleteCluster(input: DeleteClusterInput, completion: @escaping (SdkResult<DeleteClusterOutputResponse, DeleteClusterOutputError>) -> Void)
    /// <p>Deletes the specified parameter group. You cannot delete a parameter group if it is
    ///             associated with any DAX clusters.</p>
    func deleteParameterGroup(input: DeleteParameterGroupInput, completion: @escaping (SdkResult<DeleteParameterGroupOutputResponse, DeleteParameterGroupOutputError>) -> Void)
    /// <p>Deletes a subnet group.</p>
    ///         <note>
    ///             <p>You cannot delete a subnet group if it is associated with any DAX
    ///                 clusters.</p>
    ///         </note>
    func deleteSubnetGroup(input: DeleteSubnetGroupInput, completion: @escaping (SdkResult<DeleteSubnetGroupOutputResponse, DeleteSubnetGroupOutputError>) -> Void)
    /// <p>Returns information about all provisioned DAX clusters if no cluster identifier
    ///             is specified, or about a specific DAX cluster if a cluster identifier is
    ///             supplied.</p>
    ///         <p>If the cluster is in the CREATING state, only cluster level information will be
    ///             displayed until all of the nodes are successfully provisioned.</p>
    ///         <p>If the cluster is in the DELETING state, only cluster level information will be
    ///             displayed.</p>
    ///         <p>If nodes are currently being added to the DAX cluster, node endpoint information
    ///             and creation time for the additional nodes will not be displayed until they are
    ///             completely provisioned. When the DAX cluster state is <i>available</i>,
    ///             the cluster is ready for use.</p>
    ///         <p>If nodes are currently being removed from the DAX cluster, no endpoint
    ///             information for the removed nodes is displayed.</p>
    func describeClusters(input: DescribeClustersInput, completion: @escaping (SdkResult<DescribeClustersOutputResponse, DescribeClustersOutputError>) -> Void)
    /// <p>Returns the default system parameter information for the DAX caching
    ///             software.</p>
    func describeDefaultParameters(input: DescribeDefaultParametersInput, completion: @escaping (SdkResult<DescribeDefaultParametersOutputResponse, DescribeDefaultParametersOutputError>) -> Void)
    /// <p>Returns events related to DAX clusters and parameter groups. You can obtain
    ///             events specific to a particular DAX cluster or parameter group by providing the name
    ///             as a parameter.</p>
    ///         <p>By default, only the events occurring within the last 24 hours are returned; however,
    ///             you can retrieve up to 14 days' worth of events if necessary.</p>
    func describeEvents(input: DescribeEventsInput, completion: @escaping (SdkResult<DescribeEventsOutputResponse, DescribeEventsOutputError>) -> Void)
    /// <p>Returns a list of parameter group descriptions. If a parameter group name is
    ///             specified, the list will contain only the descriptions for that group.</p>
    func describeParameterGroups(input: DescribeParameterGroupsInput, completion: @escaping (SdkResult<DescribeParameterGroupsOutputResponse, DescribeParameterGroupsOutputError>) -> Void)
    /// <p>Returns the detailed parameter list for a particular parameter group.</p>
    func describeParameters(input: DescribeParametersInput, completion: @escaping (SdkResult<DescribeParametersOutputResponse, DescribeParametersOutputError>) -> Void)
    /// <p>Returns a list of subnet group descriptions. If a subnet group name is specified,
    ///             the list will contain only the description of that group.</p>
    func describeSubnetGroups(input: DescribeSubnetGroupsInput, completion: @escaping (SdkResult<DescribeSubnetGroupsOutputResponse, DescribeSubnetGroupsOutputError>) -> Void)
    /// <p>Adds one or more nodes to a DAX cluster.</p>
    func increaseReplicationFactor(input: IncreaseReplicationFactorInput, completion: @escaping (SdkResult<IncreaseReplicationFactorOutputResponse, IncreaseReplicationFactorOutputError>) -> Void)
    /// <p>List all of the tags for a DAX cluster. You can call <code>ListTags</code> up to
    ///             10 times per second, per account.</p>
    func listTags(input: ListTagsInput, completion: @escaping (SdkResult<ListTagsOutputResponse, ListTagsOutputError>) -> Void)
    /// <p>Reboots a single node of a DAX cluster. The reboot action takes place
    ///             as soon as possible. During the
    ///             reboot, the node status is set to REBOOTING.</p>
    ///         <note>
    ///             <p>
    ///                <code>RebootNode</code> restarts the DAX engine process and does not remove the contents of the cache.  </p>
    ///         </note>
    func rebootNode(input: RebootNodeInput, completion: @escaping (SdkResult<RebootNodeOutputResponse, RebootNodeOutputError>) -> Void)
    /// <p>Associates a set of tags with a DAX resource.  You can call <code>TagResource</code> up to 5 times per second, per
    ///             account. </p>
    func tagResource(input: TagResourceInput, completion: @escaping (SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// <p>Removes the association of tags from a DAX resource. You can call
    ///             <code>UntagResource</code> up to 5 times per second, per account. </p>
    func untagResource(input: UntagResourceInput, completion: @escaping (SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    /// <p>Modifies the settings for a DAX cluster. You can use this action to change one or
    ///             more cluster configuration parameters by specifying the parameters and the new
    ///             values.</p>
    func updateCluster(input: UpdateClusterInput, completion: @escaping (SdkResult<UpdateClusterOutputResponse, UpdateClusterOutputError>) -> Void)
    /// <p>Modifies the parameters of a parameter group. You can modify up to 20
    ///             parameters in a single request by submitting a list parameter name and value
    ///             pairs.</p>
    func updateParameterGroup(input: UpdateParameterGroupInput, completion: @escaping (SdkResult<UpdateParameterGroupOutputResponse, UpdateParameterGroupOutputError>) -> Void)
    /// <p>Modifies an existing subnet group.</p>
    func updateSubnetGroup(input: UpdateSubnetGroupInput, completion: @escaping (SdkResult<UpdateSubnetGroupOutputResponse, UpdateSubnetGroupOutputError>) -> Void)
}