// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct StartJobRunOutputResponse: Equatable {
    /// <p>This output lists the ARN of job run.</p>
    public let arn: String?
    /// <p>This output displays the started job run ID.</p>
    public let id: String?
    /// <p>This output displays the name of the started job run.</p>
    public let name: String?
    /// <p>This output displays the virtual cluster ID for which the job run was submitted.</p>
    public let virtualClusterId: String?

    public init (
        arn: String? = nil,
        id: String? = nil,
        name: String? = nil,
        virtualClusterId: String? = nil
    )
    {
        self.arn = arn
        self.id = id
        self.name = name
        self.virtualClusterId = virtualClusterId
    }
}

extension StartJobRunOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "StartJobRunOutputResponse(arn: \(String(describing: arn)), id: \(String(describing: id)), name: \(String(describing: name)), virtualClusterId: \(String(describing: virtualClusterId)))"}
}