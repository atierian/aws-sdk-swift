// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents an update integration response request.</p>
public struct UpdateIntegrationResponseInput: Equatable {
    /// <p>[Required] Specifies an update integration response request's HTTP method.</p>
    public let httpMethod: String?
    /// <p>A list of update operations to be applied to the specified resource and in the order specified in this list.</p>
    public let patchOperations: [PatchOperation]?
    /// <p>[Required] Specifies an update integration response request's resource identifier.</p>
    public let resourceId: String?
    /// <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
    public let restApiId: String?
    /// <p>[Required] Specifies an update integration response request's status code.</p>
    public let statusCode: String?

    public init (
        httpMethod: String? = nil,
        patchOperations: [PatchOperation]? = nil,
        resourceId: String? = nil,
        restApiId: String? = nil,
        statusCode: String? = nil
    )
    {
        self.httpMethod = httpMethod
        self.patchOperations = patchOperations
        self.resourceId = resourceId
        self.restApiId = restApiId
        self.statusCode = statusCode
    }
}

extension UpdateIntegrationResponseInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateIntegrationResponseInput(httpMethod: \(String(describing: httpMethod)), patchOperations: \(String(describing: patchOperations)), resourceId: \(String(describing: resourceId)), restApiId: \(String(describing: restApiId)), statusCode: \(String(describing: statusCode)))"}
}