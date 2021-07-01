// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GenerateDataSetInputBody: Equatable {
    public let dataSetType: DataSetType?
    public let dataSetPublicationDate: Date?
    public let roleNameArn: String?
    public let destinationS3BucketName: String?
    public let destinationS3Prefix: String?
    public let snsTopicArn: String?
    public let customerDefinedValues: [String:String]?
}

extension GenerateDataSetInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case customerDefinedValues
        case dataSetPublicationDate
        case dataSetType
        case destinationS3BucketName
        case destinationS3Prefix
        case roleNameArn
        case snsTopicArn
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let dataSetTypeDecoded = try containerValues.decodeIfPresent(DataSetType.self, forKey: .dataSetType)
        dataSetType = dataSetTypeDecoded
        let dataSetPublicationDateDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .dataSetPublicationDate)
        dataSetPublicationDate = dataSetPublicationDateDecoded
        let roleNameArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .roleNameArn)
        roleNameArn = roleNameArnDecoded
        let destinationS3BucketNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .destinationS3BucketName)
        destinationS3BucketName = destinationS3BucketNameDecoded
        let destinationS3PrefixDecoded = try containerValues.decodeIfPresent(String.self, forKey: .destinationS3Prefix)
        destinationS3Prefix = destinationS3PrefixDecoded
        let snsTopicArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .snsTopicArn)
        snsTopicArn = snsTopicArnDecoded
        let customerDefinedValuesContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .customerDefinedValues)
        var customerDefinedValuesDecoded0: [String:String]? = nil
        if let customerDefinedValuesContainer = customerDefinedValuesContainer {
            customerDefinedValuesDecoded0 = [String:String]()
            for (key0, optionalvalue0) in customerDefinedValuesContainer {
                if let optionalvalue0 = optionalvalue0 {
                    customerDefinedValuesDecoded0?[key0] = optionalvalue0
                }
            }
        }
        customerDefinedValues = customerDefinedValuesDecoded0
    }
}