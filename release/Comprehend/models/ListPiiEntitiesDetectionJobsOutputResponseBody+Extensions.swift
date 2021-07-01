// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListPiiEntitiesDetectionJobsOutputResponseBody: Equatable {
    public let piiEntitiesDetectionJobPropertiesList: [PiiEntitiesDetectionJobProperties]?
    public let nextToken: String?
}

extension ListPiiEntitiesDetectionJobsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case piiEntitiesDetectionJobPropertiesList = "PiiEntitiesDetectionJobPropertiesList"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let piiEntitiesDetectionJobPropertiesListContainer = try containerValues.decodeIfPresent([PiiEntitiesDetectionJobProperties?].self, forKey: .piiEntitiesDetectionJobPropertiesList)
        var piiEntitiesDetectionJobPropertiesListDecoded0:[PiiEntitiesDetectionJobProperties]? = nil
        if let piiEntitiesDetectionJobPropertiesListContainer = piiEntitiesDetectionJobPropertiesListContainer {
            piiEntitiesDetectionJobPropertiesListDecoded0 = [PiiEntitiesDetectionJobProperties]()
            for structure0 in piiEntitiesDetectionJobPropertiesListContainer {
                if let structure0 = structure0 {
                    piiEntitiesDetectionJobPropertiesListDecoded0?.append(structure0)
                }
            }
        }
        piiEntitiesDetectionJobPropertiesList = piiEntitiesDetectionJobPropertiesListDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}