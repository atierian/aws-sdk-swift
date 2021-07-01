// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension UpdateFirewallPolicyChangeProtectionOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: UpdateFirewallPolicyChangeProtectionOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.firewallArn = output.firewallArn
            self.firewallName = output.firewallName
            self.firewallPolicyChangeProtection = output.firewallPolicyChangeProtection
            self.updateToken = output.updateToken
        } else {
            self.firewallArn = nil
            self.firewallName = nil
            self.firewallPolicyChangeProtection = false
            self.updateToken = nil
        }
    }
}