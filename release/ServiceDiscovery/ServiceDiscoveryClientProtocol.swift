// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>With AWS Cloud Map, you can configure public DNS, private DNS, or HTTP namespaces that your microservice
///    applications run in. When an instance becomes available, you can call the AWS Cloud Map API to register the instance
///    with AWS Cloud Map. For public or private DNS namespaces, AWS Cloud Map automatically creates DNS records and an optional
///    health check. Clients that submit public or private DNS queries, or HTTP requests, for the service receive an answer
///    that contains up to eight healthy records. </p>
public protocol ServiceDiscoveryClientProtocol {
    /// <p>Creates an HTTP namespace. Service instances registered using an HTTP namespace can be discovered using a
    ///     <code>DiscoverInstances</code> request but can't be discovered using DNS.</p>
    ///          <p>For the current quota on the number of namespaces that you can create using the same AWS account, see <a href="https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html">AWS Cloud Map quotas</a> in the
    ///     <i>AWS Cloud Map Developer Guide</i>.</p>
    func createHttpNamespace(input: CreateHttpNamespaceInput, completion: @escaping (SdkResult<CreateHttpNamespaceOutputResponse, CreateHttpNamespaceOutputError>) -> Void)
    /// <p>Creates a private namespace based on DNS, which is visible only inside a specified Amazon VPC. The namespace
    ///    defines your service naming scheme. For example, if you name your namespace <code>example.com</code> and name your
    ///    service <code>backend</code>, the resulting DNS name for the service is <code>backend.example.com</code>. Service
    ///    instances that are registered using a private DNS namespace can be discovered using either a
    ///     <code>DiscoverInstances</code> request or using DNS. For the current quota on the number of namespaces that you can
    ///    create using the same AWS account, see <a href="https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html">AWS Cloud Map Limits</a> in the <i>AWS Cloud Map Developer Guide</i>.</p>
    func createPrivateDnsNamespace(input: CreatePrivateDnsNamespaceInput, completion: @escaping (SdkResult<CreatePrivateDnsNamespaceOutputResponse, CreatePrivateDnsNamespaceOutputError>) -> Void)
    /// <p>Creates a public namespace based on DNS, which is visible on the internet. The namespace defines your service
    ///    naming scheme. For example, if you name your namespace <code>example.com</code> and name your service
    ///     <code>backend</code>, the resulting DNS name for the service is <code>backend.example.com</code>. You can discover
    ///    instances that were registered with a public DNS namespace by using either a <code>DiscoverInstances</code> request
    ///    or using DNS. For the current quota on the number of namespaces that you can create using the same AWS account, see
    ///     <a href="https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html">AWS Cloud Map Quotas</a>in the
    ///     <i>AWS Cloud Map Developer Guide</i>.</p>
    func createPublicDnsNamespace(input: CreatePublicDnsNamespaceInput, completion: @escaping (SdkResult<CreatePublicDnsNamespaceOutputResponse, CreatePublicDnsNamespaceOutputError>) -> Void)
    /// <p>Creates a service. This action defines the configuration for the following entities:</p>
    ///          <ul>
    ///             <li>
    ///                <p>For public and private DNS namespaces, one of the following combinations of DNS records in Amazon Route 53:</p>
    ///                <ul>
    ///                   <li>
    ///                      <p>
    ///                         <code>A</code>
    ///                      </p>
    ///                   </li>
    ///                   <li>
    ///                      <p>
    ///                         <code>AAAA</code>
    ///                      </p>
    ///                   </li>
    ///                   <li>
    ///                      <p>
    ///                         <code>A</code> and <code>AAAA</code>
    ///                      </p>
    ///                   </li>
    ///                   <li>
    ///                      <p>
    ///                         <code>SRV</code>
    ///                      </p>
    ///                   </li>
    ///                   <li>
    ///                      <p>
    ///                         <code>CNAME</code>
    ///                      </p>
    ///                   </li>
    ///                </ul>
    ///             </li>
    ///             <li>
    ///                <p>Optionally, a health check</p>
    ///             </li>
    ///          </ul>
    ///          <p>After you create the service, you can submit a <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_RegisterInstance.html">RegisterInstance</a> request, and AWS Cloud Map uses the
    ///    values in the configuration to create the specified entities.</p>
    ///          <p>For the current quota on the number of instances that you can register using the same namespace and using the
    ///    same service, see <a href="https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html">AWS Cloud Map
    ///     Limits</a> in the <i>AWS Cloud Map Developer Guide</i>.</p>
    func createService(input: CreateServiceInput, completion: @escaping (SdkResult<CreateServiceOutputResponse, CreateServiceOutputError>) -> Void)
    /// <p>Deletes a namespace from the current account. If the namespace still contains one or more services, the request
    ///    fails.</p>
    func deleteNamespace(input: DeleteNamespaceInput, completion: @escaping (SdkResult<DeleteNamespaceOutputResponse, DeleteNamespaceOutputError>) -> Void)
    /// <p>Deletes a specified service. If the service still contains one or more registered instances, the request
    ///    fails.</p>
    func deleteService(input: DeleteServiceInput, completion: @escaping (SdkResult<DeleteServiceOutputResponse, DeleteServiceOutputError>) -> Void)
    /// <p>Deletes the Amazon Route 53 DNS records and health check, if any, that AWS Cloud Map created for the specified
    ///    instance.</p>
    func deregisterInstance(input: DeregisterInstanceInput, completion: @escaping (SdkResult<DeregisterInstanceOutputResponse, DeregisterInstanceOutputError>) -> Void)
    /// <p>Discovers registered instances for a specified namespace and service. You can use <code>DiscoverInstances</code>
    ///    to discover instances for any type of namespace. For public and private DNS namespaces, you can also use DNS queries
    ///    to discover instances.</p>
    func discoverInstances(input: DiscoverInstancesInput, completion: @escaping (SdkResult<DiscoverInstancesOutputResponse, DiscoverInstancesOutputError>) -> Void)
    /// <p>Gets information about a specified instance.</p>
    func getInstance(input: GetInstanceInput, completion: @escaping (SdkResult<GetInstanceOutputResponse, GetInstanceOutputError>) -> Void)
    /// <p>Gets the current health status (<code>Healthy</code>, <code>Unhealthy</code>, or <code>Unknown</code>) of one or
    ///    more instances that are associated with a specified service.</p>
    ///          <note>
    ///             <p>There's a brief delay between when you register an instance and when the health status for the instance is
    ///     available. </p>
    ///          </note>
    func getInstancesHealthStatus(input: GetInstancesHealthStatusInput, completion: @escaping (SdkResult<GetInstancesHealthStatusOutputResponse, GetInstancesHealthStatusOutputError>) -> Void)
    /// <p>Gets information about a namespace.</p>
    func getNamespace(input: GetNamespaceInput, completion: @escaping (SdkResult<GetNamespaceOutputResponse, GetNamespaceOutputError>) -> Void)
    /// <p>Gets information about any operation that returns an operation ID in the response, such as a
    ///     <code>CreateService</code> request.</p>
    ///          <note>
    ///             <p>To get a list of operations that match specified criteria, see <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_ListOperations.html">ListOperations</a>.</p>
    ///          </note>
    func getOperation(input: GetOperationInput, completion: @escaping (SdkResult<GetOperationOutputResponse, GetOperationOutputError>) -> Void)
    /// <p>Gets the settings for a specified service.</p>
    func getService(input: GetServiceInput, completion: @escaping (SdkResult<GetServiceOutputResponse, GetServiceOutputError>) -> Void)
    /// <p>Lists summary information about the instances that you registered by using a specified service.</p>
    func listInstances(input: ListInstancesInput, completion: @escaping (SdkResult<ListInstancesOutputResponse, ListInstancesOutputError>) -> Void)
    /// <p>Lists summary information about the namespaces that were created by the current AWS account.</p>
    func listNamespaces(input: ListNamespacesInput, completion: @escaping (SdkResult<ListNamespacesOutputResponse, ListNamespacesOutputError>) -> Void)
    /// <p>Lists operations that match the criteria that you specify.</p>
    func listOperations(input: ListOperationsInput, completion: @escaping (SdkResult<ListOperationsOutputResponse, ListOperationsOutputError>) -> Void)
    /// <p>Lists summary information for all the services that are associated with one or more specified namespaces.</p>
    func listServices(input: ListServicesInput, completion: @escaping (SdkResult<ListServicesOutputResponse, ListServicesOutputError>) -> Void)
    /// <p>Lists tags for the specified resource.</p>
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    /// <p>Creates or updates one or more records and, optionally, creates a health check based on the settings in a
    ///    specified service. When you submit a <code>RegisterInstance</code> request, the following occurs:</p>
    ///          <ul>
    ///             <li>
    ///                <p>For each DNS record that you define in the service that's specified by <code>ServiceId</code>, a record is
    ///      created or updated in the hosted zone that's associated with the corresponding namespace.</p>
    ///             </li>
    ///             <li>
    ///                <p>If the service includes <code>HealthCheckConfig</code>, a health check is created based on the settings in the
    ///      health check configuration.</p>
    ///             </li>
    ///             <li>
    ///                <p>The health check, if any, is associated with each of the new or updated records.</p>
    ///             </li>
    ///          </ul>
    ///          <important>
    ///             <p>One <code>RegisterInstance</code> request must complete before you can submit another request and specify the
    ///     same service ID and instance ID.</p>
    ///          </important>
    ///          <p>For more information, see <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_CreateService.html">CreateService</a>.</p>
    ///          <p>When AWS Cloud Map receives a DNS query for the specified DNS name, it returns the applicable value:</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <b>If the health check is healthy</b>: returns all the records</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <b>If the health check is unhealthy</b>: returns the applicable value for the last
    ///      healthy instance</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <b>If you didn't specify a health check configuration</b>: returns all the
    ///      records</p>
    ///             </li>
    ///          </ul>
    ///          <p>For the current quota on the number of instances that you can register using the same namespace and using the
    ///    same service, see <a href="https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html">AWS Cloud Map
    ///     Limits</a> in the <i>AWS Cloud Map Developer Guide</i>.</p>
    func registerInstance(input: RegisterInstanceInput, completion: @escaping (SdkResult<RegisterInstanceOutputResponse, RegisterInstanceOutputError>) -> Void)
    /// <p>Adds one or more tags to the specified resource.</p>
    func tagResource(input: TagResourceInput, completion: @escaping (SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// <p>Removes one or more tags from the specified resource.</p>
    func untagResource(input: UntagResourceInput, completion: @escaping (SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    /// <p>Submits a request to change the health status of a custom health check to healthy or unhealthy.</p>
    ///          <p>You can use <code>UpdateInstanceCustomHealthStatus</code> to change the status only for custom health checks,
    ///    which you define using <code>HealthCheckCustomConfig</code> when you create a service. You can't use it to change the
    ///    status for Route 53 health checks, which you define using <code>HealthCheckConfig</code>.</p>
    ///          <p>For more information, see <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_HealthCheckCustomConfig.html">HealthCheckCustomConfig</a>.</p>
    func updateInstanceCustomHealthStatus(input: UpdateInstanceCustomHealthStatusInput, completion: @escaping (SdkResult<UpdateInstanceCustomHealthStatusOutputResponse, UpdateInstanceCustomHealthStatusOutputError>) -> Void)
    /// <p>Submits a request to perform the following operations:</p>
    ///          <ul>
    ///             <li>
    ///                <p>Update the TTL setting for existing <code>DnsRecords</code> configurations</p>
    ///             </li>
    ///             <li>
    ///                <p>Add, update, or delete <code>HealthCheckConfig</code> for a specified service</p>
    ///                <note>
    ///                   <p>You can't add, update, or delete a <code>HealthCheckCustomConfig</code> configuration.</p>
    ///                </note>
    ///             </li>
    ///          </ul>
    ///          <p>For public and private DNS namespaces, note the following:</p>
    ///          <ul>
    ///             <li>
    ///                <p>If you omit any existing <code>DnsRecords</code> or <code>HealthCheckConfig</code> configurations from an
    ///       <code>UpdateService</code> request, the configurations are deleted from the service.</p>
    ///             </li>
    ///             <li>
    ///                <p>If you omit an existing <code>HealthCheckCustomConfig</code> configuration from an <code>UpdateService</code>
    ///      request, the configuration isn't deleted from the service.</p>
    ///             </li>
    ///          </ul>
    ///          <p>When you update settings for a service, AWS Cloud Map also updates the corresponding settings in all the records
    ///    and health checks that were created by using the specified service.</p>
    func updateService(input: UpdateServiceInput, completion: @escaping (SdkResult<UpdateServiceOutputResponse, UpdateServiceOutputError>) -> Void)
}