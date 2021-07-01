// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetTrafficPolicyInstanceOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetTrafficPolicyInstanceOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.trafficPolicyInstance = output.trafficPolicyInstance
        } else {
            self.trafficPolicyInstance = nil
        }
    }
}