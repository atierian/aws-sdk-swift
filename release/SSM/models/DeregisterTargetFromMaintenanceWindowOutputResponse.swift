// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeregisterTargetFromMaintenanceWindowOutputResponse: Equatable {
    /// <p>The ID of the maintenance window the target was removed from.</p>
    public let windowId: String?
    /// <p>The ID of the removed target definition.</p>
    public let windowTargetId: String?

    public init (
        windowId: String? = nil,
        windowTargetId: String? = nil
    )
    {
        self.windowId = windowId
        self.windowTargetId = windowTargetId
    }
}

extension DeregisterTargetFromMaintenanceWindowOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeregisterTargetFromMaintenanceWindowOutputResponse(windowId: \(String(describing: windowId)), windowTargetId: \(String(describing: windowTargetId)))"}
}