// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeFlowDefinitionOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeFlowDefinitionOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.creationTime = output.creationTime
            self.failureReason = output.failureReason
            self.flowDefinitionArn = output.flowDefinitionArn
            self.flowDefinitionName = output.flowDefinitionName
            self.flowDefinitionStatus = output.flowDefinitionStatus
            self.humanLoopActivationConfig = output.humanLoopActivationConfig
            self.humanLoopConfig = output.humanLoopConfig
            self.humanLoopRequestSource = output.humanLoopRequestSource
            self.outputConfig = output.outputConfig
            self.roleArn = output.roleArn
        } else {
            self.creationTime = nil
            self.failureReason = nil
            self.flowDefinitionArn = nil
            self.flowDefinitionName = nil
            self.flowDefinitionStatus = nil
            self.humanLoopActivationConfig = nil
            self.humanLoopConfig = nil
            self.humanLoopRequestSource = nil
            self.outputConfig = nil
            self.roleArn = nil
        }
    }
}