// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetReusableDelegationSetOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetReusableDelegationSetOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.delegationSet = output.delegationSet
        } else {
            self.delegationSet = nil
        }
    }
}