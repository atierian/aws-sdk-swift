// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetInstancesHealthStatusInput: Equatable {
    /// <p>An array that contains the IDs of all the instances that you want to get the health status for.</p>
    ///          <p>If you omit <code>Instances</code>, AWS Cloud Map returns the health status for all the instances that are
    ///    associated with the specified service.</p>
    ///          <note>
    ///             <p>To get the IDs for the instances that you've registered by using a specified service, submit a <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_ListInstances.html">ListInstances</a> request.</p>
    ///          </note>
    public let instances: [String]?
    /// <p>The maximum number of instances that you want AWS Cloud Map to return in the response to a
    ///     <code>GetInstancesHealthStatus</code> request. If you don't specify a value for <code>MaxResults</code>, AWS Cloud Map
    ///    returns up to 100 instances.</p>
    public let maxResults: Int?
    /// <p>For the first <code>GetInstancesHealthStatus</code> request, omit this value.</p>
    ///          <p>If more than <code>MaxResults</code> instances match the specified criteria, you can submit another
    ///     <code>GetInstancesHealthStatus</code> request to get the next group of results. Specify the value of
    ///     <code>NextToken</code> from the previous response in the next request.</p>
    public let nextToken: String?
    /// <p>The ID of the service that the instance is associated with.</p>
    public let serviceId: String?

    public init (
        instances: [String]? = nil,
        maxResults: Int? = nil,
        nextToken: String? = nil,
        serviceId: String? = nil
    )
    {
        self.instances = instances
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.serviceId = serviceId
    }
}

extension GetInstancesHealthStatusInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetInstancesHealthStatusInput(instances: \(String(describing: instances)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)), serviceId: \(String(describing: serviceId)))"}
}