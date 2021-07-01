// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListEngagementsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListEngagementsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.engagements = output.engagements
            self.nextToken = output.nextToken
        } else {
            self.engagements = nil
            self.nextToken = nil
        }
    }
}