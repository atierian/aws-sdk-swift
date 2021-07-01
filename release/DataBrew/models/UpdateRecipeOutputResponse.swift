// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateRecipeOutputResponse: Equatable {
    /// <p>The name of the recipe that was updated.</p>
    public let name: String?

    public init (
        name: String? = nil
    )
    {
        self.name = name
    }
}

extension UpdateRecipeOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateRecipeOutputResponse(name: \(String(describing: name)))"}
}