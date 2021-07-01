// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DeleteBotVersionOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DeleteBotVersionOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.botId = output.botId
            self.botStatus = output.botStatus
            self.botVersion = output.botVersion
        } else {
            self.botId = nil
            self.botStatus = nil
            self.botVersion = nil
        }
    }
}