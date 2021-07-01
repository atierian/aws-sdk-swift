// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension UpdateServerEngineAttributesOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: UpdateServerEngineAttributesOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.server = output.server
        } else {
            self.server = nil
        }
    }
}