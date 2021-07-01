// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains the response parameters when OAuth is specified as the authorization type.</p>
public struct ConnectionOAuthResponseParameters: Equatable {
    /// <p>The URL to the HTTP endpoint that authorized the request.</p>
    public let authorizationEndpoint: String?
    /// <p>A <code>ConnectionOAuthClientResponseParameters</code> object that contains details about
    ///       the client parameters returned when OAuth is specified as the authorization type.</p>
    public let clientParameters: ConnectionOAuthClientResponseParameters?
    /// <p>The method used to connect to the HTTP endpoint.</p>
    public let httpMethod: ConnectionOAuthHttpMethod?
    /// <p>The additional HTTP parameters used for the OAuth authorization request.</p>
    public let oAuthHttpParameters: ConnectionHttpParameters?

    public init (
        authorizationEndpoint: String? = nil,
        clientParameters: ConnectionOAuthClientResponseParameters? = nil,
        httpMethod: ConnectionOAuthHttpMethod? = nil,
        oAuthHttpParameters: ConnectionHttpParameters? = nil
    )
    {
        self.authorizationEndpoint = authorizationEndpoint
        self.clientParameters = clientParameters
        self.httpMethod = httpMethod
        self.oAuthHttpParameters = oAuthHttpParameters
    }
}

extension ConnectionOAuthResponseParameters: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ConnectionOAuthResponseParameters(authorizationEndpoint: \(String(describing: authorizationEndpoint)), clientParameters: \(String(describing: clientParameters)), httpMethod: \(String(describing: httpMethod)), oAuthHttpParameters: \(String(describing: oAuthHttpParameters)))"}
}