// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetIntegrationsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetIntegrationsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.items = output.items
            self.nextToken = output.nextToken
        } else {
            self.items = nil
            self.nextToken = nil
        }
    }
}