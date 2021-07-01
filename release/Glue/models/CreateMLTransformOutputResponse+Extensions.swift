// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CreateMLTransformOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: CreateMLTransformOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.transformId = output.transformId
        } else {
            self.transformId = nil
        }
    }
}