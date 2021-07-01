// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents the input of a batch get repositories operation.</p>
public struct BatchGetRepositoriesInput: Equatable {
    /// <p>The names of the repositories to get information about.</p>
    ///         <note>
    ///             <p>The length constraint limit is for each string in the array. The array itself can be empty.</p>
    ///          </note>
    public let repositoryNames: [String]?

    public init (
        repositoryNames: [String]? = nil
    )
    {
        self.repositoryNames = repositoryNames
    }
}

extension BatchGetRepositoriesInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "BatchGetRepositoriesInput(repositoryNames: \(String(describing: repositoryNames)))"}
}