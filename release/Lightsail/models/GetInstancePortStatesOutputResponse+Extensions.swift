// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetInstancePortStatesOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetInstancePortStatesOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.portStates = output.portStates
        } else {
            self.portStates = nil
        }
    }
}