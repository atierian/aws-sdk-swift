// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CreateUserOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: CreateUserOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.serverId = output.serverId
            self.userName = output.userName
        } else {
            self.serverId = nil
            self.userName = nil
        }
    }
}