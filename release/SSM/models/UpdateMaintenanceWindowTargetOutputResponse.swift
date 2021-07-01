// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateMaintenanceWindowTargetOutputResponse: Equatable {
    /// <p>The updated description.</p>
    public let description: String?
    /// <p>The updated name.</p>
    public let name: String?
    /// <p>The updated owner.</p>
    public let ownerInformation: String?
    /// <p>The updated targets.</p>
    public let targets: [Target]?
    /// <p>The maintenance window ID specified in the update request.</p>
    public let windowId: String?
    /// <p>The target ID specified in the update request.</p>
    public let windowTargetId: String?

    public init (
        description: String? = nil,
        name: String? = nil,
        ownerInformation: String? = nil,
        targets: [Target]? = nil,
        windowId: String? = nil,
        windowTargetId: String? = nil
    )
    {
        self.description = description
        self.name = name
        self.ownerInformation = ownerInformation
        self.targets = targets
        self.windowId = windowId
        self.windowTargetId = windowTargetId
    }
}

extension UpdateMaintenanceWindowTargetOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateMaintenanceWindowTargetOutputResponse(description: \(String(describing: description)), name: \(String(describing: name)), ownerInformation: \(String(describing: ownerInformation)), targets: \(String(describing: targets)), windowId: \(String(describing: windowId)), windowTargetId: \(String(describing: windowTargetId)))"}
}