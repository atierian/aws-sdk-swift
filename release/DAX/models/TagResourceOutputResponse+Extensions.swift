// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension TagResourceOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: TagResourceOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.tags = output.tags
        } else {
            self.tags = nil
        }
    }
}