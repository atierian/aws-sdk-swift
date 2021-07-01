// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents information about an offering promotion.</p>
public struct OfferingPromotion: Equatable {
    /// <p>A string that describes the offering promotion.</p>
    public let description: String?
    /// <p>The ID of the offering promotion.</p>
    public let id: String?

    public init (
        description: String? = nil,
        id: String? = nil
    )
    {
        self.description = description
        self.id = id
    }
}

extension OfferingPromotion: CustomDebugStringConvertible {
    public var debugDescription: String {
        "OfferingPromotion(description: \(String(describing: description)), id: \(String(describing: id)))"}
}