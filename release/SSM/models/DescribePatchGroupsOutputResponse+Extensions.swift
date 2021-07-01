// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribePatchGroupsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribePatchGroupsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.mappings = output.mappings
            self.nextToken = output.nextToken
        } else {
            self.mappings = nil
            self.nextToken = nil
        }
    }
}