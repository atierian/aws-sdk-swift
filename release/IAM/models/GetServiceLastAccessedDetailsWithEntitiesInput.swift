// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetServiceLastAccessedDetailsWithEntitiesInput: Equatable {
    /// <p>The ID of the request generated by the <code>GenerateServiceLastAccessedDetails</code>
    ///             operation.</p>
    public let jobId: String?
    /// <p>Use this parameter only when paginating results and only after
    ///     you receive a response indicating that the results are truncated. Set it to the value of the
    ///     <code>Marker</code> element in the response that you received to indicate where the next call
    ///     should start.</p>
    public let marker: String?
    /// <p>Use this only when paginating results to indicate the
    ///     maximum number of items you want in the response. If additional items exist beyond the maximum
    ///     you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    ///          <p>If you do not include this parameter, the number of items defaults to 100. Note that
    ///     IAM might return fewer results, even when there are more results available. In that case, the
    ///     <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code>
    ///     contains a value to include in the subsequent call that tells the service where to continue
    ///     from.</p>
    public let maxItems: Int?
    /// <p>The service namespace for an AWS service. Provide the service namespace to learn
    ///             when the IAM entity last attempted to access the specified service.</p>
    ///         <p>To learn the service namespace for a service, see <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html">Actions, resources, and condition keys for AWS services</a> in the
    ///                 <i>IAM User Guide</i>. Choose the name of the service to view
    ///             details for that service. In the first paragraph, find the service prefix. For example,
    ///                 <code>(service prefix: a4b)</code>. For more information about service namespaces,
    ///             see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces">AWS
    ///                 service namespaces</a> in the <i>AWS General Reference</i>.</p>
    public let serviceNamespace: String?

    public init (
        jobId: String? = nil,
        marker: String? = nil,
        maxItems: Int? = nil,
        serviceNamespace: String? = nil
    )
    {
        self.jobId = jobId
        self.marker = marker
        self.maxItems = maxItems
        self.serviceNamespace = serviceNamespace
    }
}

extension GetServiceLastAccessedDetailsWithEntitiesInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetServiceLastAccessedDetailsWithEntitiesInput(jobId: \(String(describing: jobId)), marker: \(String(describing: marker)), maxItems: \(String(describing: maxItems)), serviceNamespace: \(String(describing: serviceNamespace)))"}
}