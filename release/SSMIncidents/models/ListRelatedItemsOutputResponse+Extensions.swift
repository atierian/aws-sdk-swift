// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListRelatedItemsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListRelatedItemsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.nextToken = output.nextToken
            self.relatedItems = output.relatedItems
        } else {
            self.nextToken = nil
            self.relatedItems = nil
        }
    }
}