// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetUsagePlanOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetUsagePlanOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.apiStages = output.apiStages
            self.description = output.description
            self.id = output.id
            self.name = output.name
            self.productCode = output.productCode
            self.quota = output.quota
            self.tags = output.tags
            self.throttle = output.throttle
        } else {
            self.apiStages = nil
            self.description = nil
            self.id = nil
            self.name = nil
            self.productCode = nil
            self.quota = nil
            self.tags = nil
            self.throttle = nil
        }
    }
}