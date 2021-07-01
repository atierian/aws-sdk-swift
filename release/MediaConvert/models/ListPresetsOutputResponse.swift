// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListPresetsOutputResponse: Equatable {
    /// Use this string to request the next batch of presets.
    public let nextToken: String?
    /// List of presets
    public let presets: [Preset]?

    public init (
        nextToken: String? = nil,
        presets: [Preset]? = nil
    )
    {
        self.nextToken = nextToken
        self.presets = presets
    }
}

extension ListPresetsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListPresetsOutputResponse(nextToken: \(String(describing: nextToken)), presets: \(String(describing: presets)))"}
}