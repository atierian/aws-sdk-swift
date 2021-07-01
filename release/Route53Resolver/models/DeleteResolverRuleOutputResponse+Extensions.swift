// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DeleteResolverRuleOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DeleteResolverRuleOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.resolverRule = output.resolverRule
        } else {
            self.resolverRule = nil
        }
    }
}