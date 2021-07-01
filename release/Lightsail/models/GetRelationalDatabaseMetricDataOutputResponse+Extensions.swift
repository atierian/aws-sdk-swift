// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetRelationalDatabaseMetricDataOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetRelationalDatabaseMetricDataOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.metricData = output.metricData
            self.metricName = output.metricName
        } else {
            self.metricData = nil
            self.metricName = nil
        }
    }
}