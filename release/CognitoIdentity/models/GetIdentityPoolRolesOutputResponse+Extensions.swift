// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetIdentityPoolRolesOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetIdentityPoolRolesOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.identityPoolId = output.identityPoolId
            self.roleMappings = output.roleMappings
            self.roles = output.roles
        } else {
            self.identityPoolId = nil
            self.roleMappings = nil
            self.roles = nil
        }
    }
}