// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension InitiateVaultLockOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if let lockIdHeaderValue = httpResponse.headers.value(for: "x-amz-lock-id") {
            self.lockId = lockIdHeaderValue
        } else {
            self.lockId = nil
        }
    }
}