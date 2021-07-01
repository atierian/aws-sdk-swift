// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateChangesetOutputResponse: Equatable {
    /// <p>Returns the changeset details.</p>
    public let changeset: ChangesetInfo?

    public init (
        changeset: ChangesetInfo? = nil
    )
    {
        self.changeset = changeset
    }
}

extension CreateChangesetOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateChangesetOutputResponse(changeset: \(String(describing: changeset)))"}
}