// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DeleteImagePipelineOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DeleteImagePipelineOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.imagePipelineArn = output.imagePipelineArn
            self.requestId = output.requestId
        } else {
            self.imagePipelineArn = nil
            self.requestId = nil
        }
    }
}