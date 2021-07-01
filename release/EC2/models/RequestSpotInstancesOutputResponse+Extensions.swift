// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension RequestSpotInstancesOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: RequestSpotInstancesOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.spotInstanceRequests = output.spotInstanceRequests
        } else {
            self.spotInstanceRequests = nil
        }
    }
}