// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents information about the output of an action.</p>
public struct OutputArtifact: Equatable {
    /// <p>The name of the output of an artifact, such as "My App".</p>
    ///         <p>The input artifact of an action must exactly match the output artifact declared in
    ///             a preceding action, but the input artifact does not have to be the next action in strict
    ///             sequence from the action that provided the output artifact. Actions in parallel can
    ///             declare different output artifacts, which are in turn consumed by different following
    ///             actions.</p>
    ///         <p>Output artifact names must be unique within a pipeline.</p>
    public let name: String?

    public init (
        name: String? = nil
    )
    {
        self.name = name
    }
}

extension OutputArtifact: CustomDebugStringConvertible {
    public var debugDescription: String {
        "OutputArtifact(name: \(String(describing: name)))"}
}