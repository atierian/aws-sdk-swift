// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListEndpointsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListEndpointsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.endpointPropertiesList = output.endpointPropertiesList
            self.nextToken = output.nextToken
        } else {
            self.endpointPropertiesList = nil
            self.nextToken = nil
        }
    }
}