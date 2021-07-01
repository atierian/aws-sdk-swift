// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension StopFlowOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: StopFlowOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.flowArn = output.flowArn
            self.status = output.status
        } else {
            self.flowArn = nil
            self.status = nil
        }
    }
}