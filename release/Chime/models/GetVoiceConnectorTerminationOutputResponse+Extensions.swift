// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetVoiceConnectorTerminationOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetVoiceConnectorTerminationOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.termination = output.termination
        } else {
            self.termination = nil
        }
    }
}