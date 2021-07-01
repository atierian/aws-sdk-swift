// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribePortfolioSharesOutputResponseBody: Equatable {
    public let nextPageToken: String?
    public let portfolioShareDetails: [PortfolioShareDetail]?
}

extension DescribePortfolioSharesOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextPageToken = "NextPageToken"
        case portfolioShareDetails = "PortfolioShareDetails"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nextPageTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextPageToken)
        nextPageToken = nextPageTokenDecoded
        let portfolioShareDetailsContainer = try containerValues.decodeIfPresent([PortfolioShareDetail?].self, forKey: .portfolioShareDetails)
        var portfolioShareDetailsDecoded0:[PortfolioShareDetail]? = nil
        if let portfolioShareDetailsContainer = portfolioShareDetailsContainer {
            portfolioShareDetailsDecoded0 = [PortfolioShareDetail]()
            for structure0 in portfolioShareDetailsContainer {
                if let structure0 = structure0 {
                    portfolioShareDetailsDecoded0?.append(structure0)
                }
            }
        }
        portfolioShareDetails = portfolioShareDetailsDecoded0
    }
}