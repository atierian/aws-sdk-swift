// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SendAlexaOfferToMasterOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: SendAlexaOfferToMasterOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.answer = output.answer
        } else {
            self.answer = nil
        }
    }
}