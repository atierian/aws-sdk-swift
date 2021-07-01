// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct AddPartnerOutputResponse: Equatable {
    /// <p>The name of the database that receives data from the partner.</p>
    public let databaseName: String?
    /// <p>The name of the partner that is authorized to send data.</p>
    public let partnerName: String?

    public init (
        databaseName: String? = nil,
        partnerName: String? = nil
    )
    {
        self.databaseName = databaseName
        self.partnerName = partnerName
    }
}

extension AddPartnerOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AddPartnerOutputResponse(databaseName: \(String(describing: databaseName)), partnerName: \(String(describing: partnerName)))"}
}