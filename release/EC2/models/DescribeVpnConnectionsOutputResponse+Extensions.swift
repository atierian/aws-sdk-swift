// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeVpnConnectionsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeVpnConnectionsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.vpnConnections = output.vpnConnections
        } else {
            self.vpnConnections = nil
        }
    }
}