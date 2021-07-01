// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeEffectivePatchesForPatchBaselineOutputResponse: Equatable {
    /// <p>An array of patches and patch status.</p>
    public let effectivePatches: [EffectivePatch]?
    /// <p>The token to use when requesting the next set of items. If there are no additional items to
    ///    return, the string is empty.</p>
    public let nextToken: String?

    public init (
        effectivePatches: [EffectivePatch]? = nil,
        nextToken: String? = nil
    )
    {
        self.effectivePatches = effectivePatches
        self.nextToken = nextToken
    }
}

extension DescribeEffectivePatchesForPatchBaselineOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeEffectivePatchesForPatchBaselineOutputResponse(effectivePatches: \(String(describing: effectivePatches)), nextToken: \(String(describing: nextToken)))"}
}