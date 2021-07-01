// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateDeliverabilityTestReportInputBody: Equatable {
    public let reportName: String?
    public let fromEmailAddress: String?
    public let content: EmailContent?
    public let tags: [Tag]?
}

extension CreateDeliverabilityTestReportInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case content = "Content"
        case fromEmailAddress = "FromEmailAddress"
        case reportName = "ReportName"
        case tags = "Tags"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let reportNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .reportName)
        reportName = reportNameDecoded
        let fromEmailAddressDecoded = try containerValues.decodeIfPresent(String.self, forKey: .fromEmailAddress)
        fromEmailAddress = fromEmailAddressDecoded
        let contentDecoded = try containerValues.decodeIfPresent(EmailContent.self, forKey: .content)
        content = contentDecoded
        let tagsContainer = try containerValues.decodeIfPresent([Tag?].self, forKey: .tags)
        var tagsDecoded0:[Tag]? = nil
        if let tagsContainer = tagsContainer {
            tagsDecoded0 = [Tag]()
            for structure0 in tagsContainer {
                if let structure0 = structure0 {
                    tagsDecoded0?.append(structure0)
                }
            }
        }
        tags = tagsDecoded0
    }
}