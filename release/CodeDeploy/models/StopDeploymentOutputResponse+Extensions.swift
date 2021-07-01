// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension StopDeploymentOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: StopDeploymentOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.status = output.status
            self.statusMessage = output.statusMessage
        } else {
            self.status = nil
            self.statusMessage = nil
        }
    }
}