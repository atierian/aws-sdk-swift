// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The service within the service graph that has anomalously high fault rates. </p>
public struct AnomalousService: Equatable {
    /// <p></p>
    public let serviceId: ServiceId?

    public init (
        serviceId: ServiceId? = nil
    )
    {
        self.serviceId = serviceId
    }
}

extension AnomalousService: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AnomalousService(serviceId: \(String(describing: serviceId)))"}
}