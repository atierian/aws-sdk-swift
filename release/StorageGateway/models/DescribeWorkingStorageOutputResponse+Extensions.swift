// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeWorkingStorageOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeWorkingStorageOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.diskIds = output.diskIds
            self.gatewayARN = output.gatewayARN
            self.workingStorageAllocatedInBytes = output.workingStorageAllocatedInBytes
            self.workingStorageUsedInBytes = output.workingStorageUsedInBytes
        } else {
            self.diskIds = nil
            self.gatewayARN = nil
            self.workingStorageAllocatedInBytes = 0
            self.workingStorageUsedInBytes = 0
        }
    }
}