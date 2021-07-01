// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeDetectMitigationActionsTaskOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeDetectMitigationActionsTaskOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.taskSummary = output.taskSummary
        } else {
            self.taskSummary = nil
        }
    }
}