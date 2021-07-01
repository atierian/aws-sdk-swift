// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListLogPatternSetsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListLogPatternSetsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.logPatternSets = output.logPatternSets
            self.nextToken = output.nextToken
            self.resourceGroupName = output.resourceGroupName
        } else {
            self.logPatternSets = nil
            self.nextToken = nil
            self.resourceGroupName = nil
        }
    }
}