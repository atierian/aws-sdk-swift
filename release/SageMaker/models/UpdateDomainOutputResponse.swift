// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateDomainOutputResponse: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the domain.</p>
    public let domainArn: String?

    public init (
        domainArn: String? = nil
    )
    {
        self.domainArn = domainArn
    }
}

extension UpdateDomainOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateDomainOutputResponse(domainArn: \(String(describing: domainArn)))"}
}