// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ModifyInstanceEventStartTimeOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ModifyInstanceEventStartTimeOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.event = output.event
        } else {
            self.event = nil
        }
    }
}