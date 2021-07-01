// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents the output of a <a>AttachToIndex</a> response operation.</p>
public struct BatchAttachToIndexResponse: Equatable {
    /// <p>The <code>ObjectIdentifier</code> of the object that was attached to the index.</p>
    public let attachedObjectIdentifier: String?

    public init (
        attachedObjectIdentifier: String? = nil
    )
    {
        self.attachedObjectIdentifier = attachedObjectIdentifier
    }
}

extension BatchAttachToIndexResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "BatchAttachToIndexResponse(attachedObjectIdentifier: \(String(describing: attachedObjectIdentifier)))"}
}