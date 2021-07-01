// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteUserEndpointsOutputResponse: Equatable {
    /// <p>Provides information about all the endpoints that are associated with a user ID.</p>
    public let endpointsResponse: EndpointsResponse?

    public init (
        endpointsResponse: EndpointsResponse? = nil
    )
    {
        self.endpointsResponse = endpointsResponse
    }
}

extension DeleteUserEndpointsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteUserEndpointsOutputResponse(endpointsResponse: \(String(describing: endpointsResponse)))"}
}