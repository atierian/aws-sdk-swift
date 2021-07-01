// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribePortalOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribePortalOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.alarms = output.alarms
            self.notificationSenderEmail = output.notificationSenderEmail
            self.portalArn = output.portalArn
            self.portalAuthMode = output.portalAuthMode
            self.portalClientId = output.portalClientId
            self.portalContactEmail = output.portalContactEmail
            self.portalCreationDate = output.portalCreationDate
            self.portalDescription = output.portalDescription
            self.portalId = output.portalId
            self.portalLastUpdateDate = output.portalLastUpdateDate
            self.portalLogoImageLocation = output.portalLogoImageLocation
            self.portalName = output.portalName
            self.portalStartUrl = output.portalStartUrl
            self.portalStatus = output.portalStatus
            self.roleArn = output.roleArn
        } else {
            self.alarms = nil
            self.notificationSenderEmail = nil
            self.portalArn = nil
            self.portalAuthMode = nil
            self.portalClientId = nil
            self.portalContactEmail = nil
            self.portalCreationDate = nil
            self.portalDescription = nil
            self.portalId = nil
            self.portalLastUpdateDate = nil
            self.portalLogoImageLocation = nil
            self.portalName = nil
            self.portalStartUrl = nil
            self.portalStatus = nil
            self.roleArn = nil
        }
    }
}