// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The GetOperationDetail response includes the following elements.</p>
public struct GetOperationDetailOutputResponse: Equatable {
    /// <p>The name of a domain.</p>
    public let domainName: String?
    /// <p>Detailed information on the status including possible errors.</p>
    public let message: String?
    /// <p>The identifier for the operation.</p>
    public let operationId: String?
    /// <p>The current status of the requested operation in the system.</p>
    public let status: OperationStatus?
    /// <p>The date when the request was submitted.</p>
    public let submittedDate: Date?
    /// <p>The type of operation that was requested.</p>
    public let type: OperationType?

    public init (
        domainName: String? = nil,
        message: String? = nil,
        operationId: String? = nil,
        status: OperationStatus? = nil,
        submittedDate: Date? = nil,
        type: OperationType? = nil
    )
    {
        self.domainName = domainName
        self.message = message
        self.operationId = operationId
        self.status = status
        self.submittedDate = submittedDate
        self.type = type
    }
}

extension GetOperationDetailOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetOperationDetailOutputResponse(domainName: \(String(describing: domainName)), message: \(String(describing: message)), operationId: \(String(describing: operationId)), status: \(String(describing: status)), submittedDate: \(String(describing: submittedDate)), type: \(String(describing: type)))"}
}