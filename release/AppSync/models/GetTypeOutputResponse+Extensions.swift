// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetTypeOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetTypeOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.type = output.type
        } else {
            self.type = nil
        }
    }
}