// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeAssessmentRunsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeAssessmentRunsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.assessmentRuns = output.assessmentRuns
            self.failedItems = output.failedItems
        } else {
            self.assessmentRuns = nil
            self.failedItems = nil
        }
    }
}