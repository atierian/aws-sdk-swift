// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct RegisterDefaultPatchBaselineOutputResponse: Equatable {
    /// <p>The ID of the default patch baseline.</p>
    public let baselineId: String?

    public init (
        baselineId: String? = nil
    )
    {
        self.baselineId = baselineId
    }
}

extension RegisterDefaultPatchBaselineOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RegisterDefaultPatchBaselineOutputResponse(baselineId: \(String(describing: baselineId)))"}
}