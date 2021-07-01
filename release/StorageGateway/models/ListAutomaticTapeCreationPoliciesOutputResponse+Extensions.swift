// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListAutomaticTapeCreationPoliciesOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListAutomaticTapeCreationPoliciesOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.automaticTapeCreationPolicyInfos = output.automaticTapeCreationPolicyInfos
        } else {
            self.automaticTapeCreationPolicyInfos = nil
        }
    }
}