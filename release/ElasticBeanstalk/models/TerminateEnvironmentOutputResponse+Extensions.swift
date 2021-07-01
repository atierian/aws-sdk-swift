// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension TerminateEnvironmentOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: TerminateEnvironmentOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.abortableOperationInProgress = output.abortableOperationInProgress
            self.applicationName = output.applicationName
            self.cNAME = output.cNAME
            self.dateCreated = output.dateCreated
            self.dateUpdated = output.dateUpdated
            self.description = output.description
            self.endpointURL = output.endpointURL
            self.environmentArn = output.environmentArn
            self.environmentId = output.environmentId
            self.environmentLinks = output.environmentLinks
            self.environmentName = output.environmentName
            self.health = output.health
            self.healthStatus = output.healthStatus
            self.operationsRole = output.operationsRole
            self.platformArn = output.platformArn
            self.resources = output.resources
            self.solutionStackName = output.solutionStackName
            self.status = output.status
            self.templateName = output.templateName
            self.tier = output.tier
            self.versionLabel = output.versionLabel
        } else {
            self.abortableOperationInProgress = nil
            self.applicationName = nil
            self.cNAME = nil
            self.dateCreated = nil
            self.dateUpdated = nil
            self.description = nil
            self.endpointURL = nil
            self.environmentArn = nil
            self.environmentId = nil
            self.environmentLinks = nil
            self.environmentName = nil
            self.health = nil
            self.healthStatus = nil
            self.operationsRole = nil
            self.platformArn = nil
            self.resources = nil
            self.solutionStackName = nil
            self.status = nil
            self.templateName = nil
            self.tier = nil
            self.versionLabel = nil
        }
    }
}