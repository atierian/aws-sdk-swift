// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Specifies attributes for sorting a list of built-in slot
///          types.</p>
public struct BuiltInSlotTypeSortBy: Equatable {
    /// <p>The attribute to use to sort the list of built-in intents.</p>
    public let attribute: BuiltInSlotTypeSortAttribute?
    /// <p>The order to sort the list. You can choose ascending or
    ///          descending.</p>
    public let order: SortOrder?

    public init (
        attribute: BuiltInSlotTypeSortAttribute? = nil,
        order: SortOrder? = nil
    )
    {
        self.attribute = attribute
        self.order = order
    }
}

extension BuiltInSlotTypeSortBy: CustomDebugStringConvertible {
    public var debugDescription: String {
        "BuiltInSlotTypeSortBy(attribute: \(String(describing: attribute)), order: \(String(describing: order)))"}
}