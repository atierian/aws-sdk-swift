// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeElasticLoadBalancersOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeElasticLoadBalancersOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.elasticLoadBalancers = output.elasticLoadBalancers
        } else {
            self.elasticLoadBalancers = nil
        }
    }
}