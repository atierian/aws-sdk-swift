// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeCodeRepositoryOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeCodeRepositoryOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.codeRepositoryArn = output.codeRepositoryArn
            self.codeRepositoryName = output.codeRepositoryName
            self.creationTime = output.creationTime
            self.gitConfig = output.gitConfig
            self.lastModifiedTime = output.lastModifiedTime
        } else {
            self.codeRepositoryArn = nil
            self.codeRepositoryName = nil
            self.creationTime = nil
            self.gitConfig = nil
            self.lastModifiedTime = nil
        }
    }
}