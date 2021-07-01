// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SearchProductsAsAdminOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: SearchProductsAsAdminOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.nextPageToken = output.nextPageToken
            self.productViewDetails = output.productViewDetails
        } else {
            self.nextPageToken = nil
            self.productViewDetails = nil
        }
    }
}