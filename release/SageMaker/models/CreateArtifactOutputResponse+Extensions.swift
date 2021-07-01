// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CreateArtifactOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: CreateArtifactOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.artifactArn = output.artifactArn
        } else {
            self.artifactArn = nil
        }
    }
}