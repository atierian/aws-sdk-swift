// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension PurchaseScheduledInstancesOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: PurchaseScheduledInstancesOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.scheduledInstanceSet = output.scheduledInstanceSet
        } else {
            self.scheduledInstanceSet = nil
        }
    }
}