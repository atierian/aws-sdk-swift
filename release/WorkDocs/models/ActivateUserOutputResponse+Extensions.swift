// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ActivateUserOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ActivateUserOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.user = output.user
        } else {
            self.user = nil
        }
    }
}