// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeServiceActionExecutionParametersOutputResponseBody: Equatable {
    public let serviceActionParameters: [ExecutionParameter]?
}

extension DescribeServiceActionExecutionParametersOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case serviceActionParameters = "ServiceActionParameters"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let serviceActionParametersContainer = try containerValues.decodeIfPresent([ExecutionParameter?].self, forKey: .serviceActionParameters)
        var serviceActionParametersDecoded0:[ExecutionParameter]? = nil
        if let serviceActionParametersContainer = serviceActionParametersContainer {
            serviceActionParametersDecoded0 = [ExecutionParameter]()
            for structure0 in serviceActionParametersContainer {
                if let structure0 = structure0 {
                    serviceActionParametersDecoded0?.append(structure0)
                }
            }
        }
        serviceActionParameters = serviceActionParametersDecoded0
    }
}