// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ModifyFleetOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ModifyFleetOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.`return` = output.`return`
        } else {
            self.`return` = false
        }
    }
}