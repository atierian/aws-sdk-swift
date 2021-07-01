// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CreateServiceProfileOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: CreateServiceProfileOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.arn = output.arn
            self.id = output.id
        } else {
            self.arn = nil
            self.id = nil
        }
    }
}