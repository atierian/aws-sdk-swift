// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DeleteUserOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DeleteUserOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.aRN = output.aRN
            self.accessString = output.accessString
            self.authentication = output.authentication
            self.engine = output.engine
            self.status = output.status
            self.userGroupIds = output.userGroupIds
            self.userId = output.userId
            self.userName = output.userName
        } else {
            self.aRN = nil
            self.accessString = nil
            self.authentication = nil
            self.engine = nil
            self.status = nil
            self.userGroupIds = nil
            self.userId = nil
            self.userName = nil
        }
    }
}