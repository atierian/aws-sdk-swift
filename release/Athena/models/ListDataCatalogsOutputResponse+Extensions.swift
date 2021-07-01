// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListDataCatalogsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListDataCatalogsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.dataCatalogsSummary = output.dataCatalogsSummary
            self.nextToken = output.nextToken
        } else {
            self.dataCatalogsSummary = nil
            self.nextToken = nil
        }
    }
}