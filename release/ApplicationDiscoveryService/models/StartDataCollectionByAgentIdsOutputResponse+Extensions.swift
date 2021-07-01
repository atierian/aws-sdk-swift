// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension StartDataCollectionByAgentIdsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: StartDataCollectionByAgentIdsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.agentsConfigurationStatus = output.agentsConfigurationStatus
        } else {
            self.agentsConfigurationStatus = nil
        }
    }
}