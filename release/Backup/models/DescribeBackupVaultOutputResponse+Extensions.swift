// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeBackupVaultOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeBackupVaultOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.backupVaultArn = output.backupVaultArn
            self.backupVaultName = output.backupVaultName
            self.creationDate = output.creationDate
            self.creatorRequestId = output.creatorRequestId
            self.encryptionKeyArn = output.encryptionKeyArn
            self.numberOfRecoveryPoints = output.numberOfRecoveryPoints
        } else {
            self.backupVaultArn = nil
            self.backupVaultName = nil
            self.creationDate = nil
            self.creatorRequestId = nil
            self.encryptionKeyArn = nil
            self.numberOfRecoveryPoints = 0
        }
    }
}