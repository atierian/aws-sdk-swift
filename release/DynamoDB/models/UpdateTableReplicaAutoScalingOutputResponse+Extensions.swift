// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension UpdateTableReplicaAutoScalingOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: UpdateTableReplicaAutoScalingOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.tableAutoScalingDescription = output.tableAutoScalingDescription
        } else {
            self.tableAutoScalingDescription = nil
        }
    }
}