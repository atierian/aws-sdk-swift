// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DiscoverPollEndpointOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DiscoverPollEndpointOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.endpoint = output.endpoint
            self.telemetryEndpoint = output.telemetryEndpoint
        } else {
            self.endpoint = nil
            self.telemetryEndpoint = nil
        }
    }
}