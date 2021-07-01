// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CreateAnalyzerOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: CreateAnalyzerOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.arn = output.arn
        } else {
            self.arn = nil
        }
    }
}