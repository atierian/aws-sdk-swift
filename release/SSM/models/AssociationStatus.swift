// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Describes an association status.</p>
public struct AssociationStatus: Equatable {
    /// <p>A user-defined string.</p>
    public let additionalInfo: String?
    /// <p>The date when the status changed.</p>
    public let date: Date?
    /// <p>The reason for the status.</p>
    public let message: String?
    /// <p>The status.</p>
    public let name: AssociationStatusName?

    public init (
        additionalInfo: String? = nil,
        date: Date? = nil,
        message: String? = nil,
        name: AssociationStatusName? = nil
    )
    {
        self.additionalInfo = additionalInfo
        self.date = date
        self.message = message
        self.name = name
    }
}

extension AssociationStatus: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AssociationStatus(additionalInfo: \(String(describing: additionalInfo)), date: \(String(describing: date)), message: \(String(describing: message)), name: \(String(describing: name)))"}
}