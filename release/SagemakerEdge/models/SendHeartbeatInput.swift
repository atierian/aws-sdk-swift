// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct SendHeartbeatInput: Equatable {
    /// <p>For internal use. Returns a list of SageMaker Edge Manager agent operating metrics.</p>
    public let agentMetrics: [EdgeMetric]?
    /// <p>Returns the version of the agent.</p>
    public let agentVersion: String?
    /// <p>The name of the fleet that the device belongs to.</p>
    public let deviceFleetName: String?
    /// <p>The unique name of the device.</p>
    public let deviceName: String?
    /// <p>Returns a list of models deployed on the the device.</p>
    public let models: [Model]?

    public init (
        agentMetrics: [EdgeMetric]? = nil,
        agentVersion: String? = nil,
        deviceFleetName: String? = nil,
        deviceName: String? = nil,
        models: [Model]? = nil
    )
    {
        self.agentMetrics = agentMetrics
        self.agentVersion = agentVersion
        self.deviceFleetName = deviceFleetName
        self.deviceName = deviceName
        self.models = models
    }
}

extension SendHeartbeatInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SendHeartbeatInput(agentMetrics: \(String(describing: agentMetrics)), agentVersion: \(String(describing: agentVersion)), deviceFleetName: \(String(describing: deviceFleetName)), deviceName: \(String(describing: deviceName)), models: \(String(describing: models)))"}
}