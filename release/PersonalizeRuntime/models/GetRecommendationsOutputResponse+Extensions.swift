// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetRecommendationsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetRecommendationsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.itemList = output.itemList
            self.recommendationId = output.recommendationId
        } else {
            self.itemList = nil
            self.recommendationId = nil
        }
    }
}