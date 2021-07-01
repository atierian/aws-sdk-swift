// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListCostCategoryDefinitionsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListCostCategoryDefinitionsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.costCategoryReferences = output.costCategoryReferences
            self.nextToken = output.nextToken
        } else {
            self.costCategoryReferences = nil
            self.nextToken = nil
        }
    }
}