// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Details and type of a related item.</p>
public struct ItemIdentifier: Equatable {
    /// <p>The type of related item. Incident Manager supports the following types:</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>ANALYSIS</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>INCIDENT</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>METRIC</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>PARENT</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>ATTACHMENT</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>OTHER</code>
    ///                </p>
    ///             </li>
    ///          </ul>
    public let type: ItemType?
    /// <p>Details about the related item.</p>
    public let value: ItemValue?

    public init (
        type: ItemType? = nil,
        value: ItemValue? = nil
    )
    {
        self.type = type
        self.value = value
    }
}

extension ItemIdentifier: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ItemIdentifier(type: \(String(describing: type)), value: \(String(describing: value)))"}
}