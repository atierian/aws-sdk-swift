// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetWorkflowOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetWorkflowOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.workflow = output.workflow
        } else {
            self.workflow = nil
        }
    }
}