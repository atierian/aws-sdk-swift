// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension UpdateAnswerOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: UpdateAnswerOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.answer = output.answer
            self.lensAlias = output.lensAlias
            self.workloadId = output.workloadId
        } else {
            self.answer = nil
            self.lensAlias = nil
            self.workloadId = nil
        }
    }
}