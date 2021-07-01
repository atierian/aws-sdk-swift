// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribePHIDetectionJobOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribePHIDetectionJobOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.comprehendMedicalAsyncJobProperties = output.comprehendMedicalAsyncJobProperties
        } else {
            self.comprehendMedicalAsyncJobProperties = nil
        }
    }
}