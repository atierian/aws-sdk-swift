// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteAddonInput: Equatable {
    /// <p>The name of the add-on. The name must match one of the names returned by <a href="https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html">
    ///                <code>ListAddons</code>
    ///             </a>.</p>
    public let addonName: String?
    /// <p>The name of the cluster to delete the add-on from.</p>
    public let clusterName: String?

    public init (
        addonName: String? = nil,
        clusterName: String? = nil
    )
    {
        self.addonName = addonName
        self.clusterName = clusterName
    }
}

extension DeleteAddonInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteAddonInput(addonName: \(String(describing: addonName)), clusterName: \(String(describing: clusterName)))"}
}