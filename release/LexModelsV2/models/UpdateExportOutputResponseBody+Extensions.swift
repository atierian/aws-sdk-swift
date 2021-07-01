// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateExportOutputResponseBody: Equatable {
    public let exportId: String?
    public let resourceSpecification: ExportResourceSpecification?
    public let fileFormat: ImportExportFileFormat?
    public let exportStatus: ExportStatus?
    public let creationDateTime: Date?
    public let lastUpdatedDateTime: Date?
}

extension UpdateExportOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case creationDateTime
        case exportId
        case exportStatus
        case fileFormat
        case lastUpdatedDateTime
        case resourceSpecification
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let exportIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .exportId)
        exportId = exportIdDecoded
        let resourceSpecificationDecoded = try containerValues.decodeIfPresent(ExportResourceSpecification.self, forKey: .resourceSpecification)
        resourceSpecification = resourceSpecificationDecoded
        let fileFormatDecoded = try containerValues.decodeIfPresent(ImportExportFileFormat.self, forKey: .fileFormat)
        fileFormat = fileFormatDecoded
        let exportStatusDecoded = try containerValues.decodeIfPresent(ExportStatus.self, forKey: .exportStatus)
        exportStatus = exportStatusDecoded
        let creationDateTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .creationDateTime)
        creationDateTime = creationDateTimeDecoded
        let lastUpdatedDateTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastUpdatedDateTime)
        lastUpdatedDateTime = lastUpdatedDateTimeDecoded
    }
}