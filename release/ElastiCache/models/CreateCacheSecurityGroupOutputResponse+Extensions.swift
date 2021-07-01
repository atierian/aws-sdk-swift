// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CreateCacheSecurityGroupOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: CreateCacheSecurityGroupOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.cacheSecurityGroup = output.cacheSecurityGroup
        } else {
            self.cacheSecurityGroup = nil
        }
    }
}