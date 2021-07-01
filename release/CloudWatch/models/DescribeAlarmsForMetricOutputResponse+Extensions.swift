// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeAlarmsForMetricOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeAlarmsForMetricOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.metricAlarms = output.metricAlarms
        } else {
            self.metricAlarms = nil
        }
    }
}