// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteAssetInput: Equatable {
    /// The ID of the MediaPackage VOD Asset resource to delete.
    public let id: String?

    public init (
        id: String? = nil
    )
    {
        self.id = id
    }
}

extension DeleteAssetInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteAssetInput(id: \(String(describing: id)))"}
}