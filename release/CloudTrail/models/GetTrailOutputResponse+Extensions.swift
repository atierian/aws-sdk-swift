// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetTrailOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetTrailOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.trail = output.trail
        } else {
            self.trail = nil
        }
    }
}