// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DisassociateFromMasterAccountInput: Equatable {
    /// <p>The unique ID of the detector of the GuardDuty member account.</p>
    public let detectorId: String?

    public init (
        detectorId: String? = nil
    )
    {
        self.detectorId = detectorId
    }
}

extension DisassociateFromMasterAccountInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DisassociateFromMasterAccountInput(detectorId: \(String(describing: detectorId)))"}
}