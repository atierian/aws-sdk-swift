// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListAssociatedFleetsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListAssociatedFleetsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.names = output.names
            self.nextToken = output.nextToken
        } else {
            self.names = nil
            self.nextToken = nil
        }
    }
}