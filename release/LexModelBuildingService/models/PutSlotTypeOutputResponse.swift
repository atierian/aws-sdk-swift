// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct PutSlotTypeOutputResponse: Equatable {
    /// <p>Checksum of the <code>$LATEST</code> version of the slot
    ///       type.</p>
    public let checksum: String?
    /// <p>
    ///             <code>True</code> if a new version of the slot type was created. If
    ///       the <code>createVersion</code> field was not specified in the request, the
    ///         <code>createVersion</code> field is set to false in the
    ///       response.</p>
    public let createVersion: Bool?
    /// <p>The date that the slot type was created.</p>
    public let createdDate: Date?
    /// <p>A description of the slot type.</p>
    public let description: String?
    /// <p>A list of <code>EnumerationValue</code> objects that defines the
    ///       values that the slot type can take.</p>
    public let enumerationValues: [EnumerationValue]?
    /// <p>The date that the slot type was updated. When you create a slot
    ///       type, the creation date and last update date are the same.</p>
    public let lastUpdatedDate: Date?
    /// <p>The name of the slot type.</p>
    public let name: String?
    /// <p>The built-in slot type used as the parent of the slot type.</p>
    public let parentSlotTypeSignature: String?
    /// <p>Configuration information that extends the parent built-in slot
    ///       type.</p>
    public let slotTypeConfigurations: [SlotTypeConfiguration]?
    /// <p>The slot resolution strategy that Amazon Lex uses to determine the value
    ///       of the slot. For more information, see <a>PutSlotType</a>.</p>
    public let valueSelectionStrategy: SlotValueSelectionStrategy?
    /// <p>The version of the slot type. For a new slot type, the version is
    ///       always <code>$LATEST</code>. </p>
    public let version: String?

    public init (
        checksum: String? = nil,
        createVersion: Bool? = nil,
        createdDate: Date? = nil,
        description: String? = nil,
        enumerationValues: [EnumerationValue]? = nil,
        lastUpdatedDate: Date? = nil,
        name: String? = nil,
        parentSlotTypeSignature: String? = nil,
        slotTypeConfigurations: [SlotTypeConfiguration]? = nil,
        valueSelectionStrategy: SlotValueSelectionStrategy? = nil,
        version: String? = nil
    )
    {
        self.checksum = checksum
        self.createVersion = createVersion
        self.createdDate = createdDate
        self.description = description
        self.enumerationValues = enumerationValues
        self.lastUpdatedDate = lastUpdatedDate
        self.name = name
        self.parentSlotTypeSignature = parentSlotTypeSignature
        self.slotTypeConfigurations = slotTypeConfigurations
        self.valueSelectionStrategy = valueSelectionStrategy
        self.version = version
    }
}

extension PutSlotTypeOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PutSlotTypeOutputResponse(checksum: \(String(describing: checksum)), createVersion: \(String(describing: createVersion)), createdDate: \(String(describing: createdDate)), description: \(String(describing: description)), enumerationValues: \(String(describing: enumerationValues)), lastUpdatedDate: \(String(describing: lastUpdatedDate)), name: \(String(describing: name)), parentSlotTypeSignature: \(String(describing: parentSlotTypeSignature)), slotTypeConfigurations: \(String(describing: slotTypeConfigurations)), valueSelectionStrategy: \(String(describing: valueSelectionStrategy)), version: \(String(describing: version)))"}
}