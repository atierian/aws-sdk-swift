// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetReservationPurchaseRecommendationOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetReservationPurchaseRecommendationOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.metadata = output.metadata
            self.nextPageToken = output.nextPageToken
            self.recommendations = output.recommendations
        } else {
            self.metadata = nil
            self.nextPageToken = nil
            self.recommendations = nil
        }
    }
}