// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The AcceptDomainTransferFromAnotherAwsAccount response includes the following element.</p>
public struct AcceptDomainTransferFromAnotherAwsAccountOutputResponse: Equatable {
    /// <p>Identifier for tracking the progress of the request. To query the operation status, use
    /// 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a>.</p>
    public let operationId: String?

    public init (
        operationId: String? = nil
    )
    {
        self.operationId = operationId
    }
}

extension AcceptDomainTransferFromAnotherAwsAccountOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AcceptDomainTransferFromAnotherAwsAccountOutputResponse(operationId: \(String(describing: operationId)))"}
}