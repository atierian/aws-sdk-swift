// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteImageInput: Equatable {
    /// <p>The name of the image.</p>
    public let name: String?

    public init (
        name: String? = nil
    )
    {
        self.name = name
    }
}

extension DeleteImageInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteImageInput(name: \(String(describing: name)))"}
}