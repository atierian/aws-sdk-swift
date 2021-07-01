// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListLambdaFunctionsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListLambdaFunctionsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.lambdaFunctions = output.lambdaFunctions
            self.nextToken = output.nextToken
        } else {
            self.lambdaFunctions = nil
            self.nextToken = nil
        }
    }
}