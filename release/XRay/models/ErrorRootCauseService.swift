// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A collection of fields identifying the services in a trace summary error.</p>
public struct ErrorRootCauseService: Equatable {
    /// <p>The account ID associated to the service.</p>
    public let accountId: String?
    /// <p>The path of root cause entities found on the service. </p>
    public let entityPath: [ErrorRootCauseEntity]?
    /// <p>A Boolean value indicating if the service is inferred from the trace.</p>
    public let inferred: Bool?
    /// <p>The service name.</p>
    public let name: String?
    /// <p>A collection of associated service names.</p>
    public let names: [String]?
    /// <p>The type associated to the service.</p>
    public let type: String?

    public init (
        accountId: String? = nil,
        entityPath: [ErrorRootCauseEntity]? = nil,
        inferred: Bool? = nil,
        name: String? = nil,
        names: [String]? = nil,
        type: String? = nil
    )
    {
        self.accountId = accountId
        self.entityPath = entityPath
        self.inferred = inferred
        self.name = name
        self.names = names
        self.type = type
    }
}

extension ErrorRootCauseService: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ErrorRootCauseService(accountId: \(String(describing: accountId)), entityPath: \(String(describing: entityPath)), inferred: \(String(describing: inferred)), name: \(String(describing: name)), names: \(String(describing: names)), type: \(String(describing: type)))"}
}