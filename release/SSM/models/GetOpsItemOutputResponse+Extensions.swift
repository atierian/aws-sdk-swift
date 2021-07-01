// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetOpsItemOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetOpsItemOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.opsItem = output.opsItem
        } else {
            self.opsItem = nil
        }
    }
}