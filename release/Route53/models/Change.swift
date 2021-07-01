// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The information for each resource record set that you want to change.</p>
public struct Change: Equatable {
    /// <p>The action to perform:</p>
    /// 		       <ul>
    ///             <li>
    /// 				           <p>
    ///                   <code>CREATE</code>: Creates a resource record set that has the specified values.</p>
    /// 			         </li>
    ///             <li>
    /// 				           <p>
    ///                   <code>DELETE</code>: Deletes a existing resource record set.</p>
    /// 				           <important>
    /// 					             <p>To delete the resource record set that is associated with a traffic policy instance, use
    /// 						<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_DeleteTrafficPolicyInstance.html">DeleteTrafficPolicyInstance</a>.
    /// 						Amazon Route 53 will delete the resource record set automatically. If you delete the resource record set by using
    /// 						<code>ChangeResourceRecordSets</code>, Route 53 doesn't automatically delete the traffic policy instance, and you'll continue
    /// 						to be charged for it even though it's no longer in use. </p>
    /// 				           </important>
    /// 			         </li>
    ///             <li>
    /// 				           <p>
    ///                   <code>UPSERT</code>: If a resource record set doesn't already exist, Route 53 creates it.
    /// 					If a resource record set does exist, Route 53 updates it with the values in the request.</p>
    /// 			         </li>
    ///          </ul>
    public let action: ChangeAction?
    /// <p>Information about the resource record set to create, delete, or update.</p>
    public let resourceRecordSet: ResourceRecordSet?

    public init (
        action: ChangeAction? = nil,
        resourceRecordSet: ResourceRecordSet? = nil
    )
    {
        self.action = action
        self.resourceRecordSet = resourceRecordSet
    }
}

extension Change: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Change(action: \(String(describing: action)), resourceRecordSet: \(String(describing: resourceRecordSet)))"}
}