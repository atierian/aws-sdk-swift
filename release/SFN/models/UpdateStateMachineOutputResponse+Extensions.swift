// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension UpdateStateMachineOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: UpdateStateMachineOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.updateDate = output.updateDate
        } else {
            self.updateDate = nil
        }
    }
}