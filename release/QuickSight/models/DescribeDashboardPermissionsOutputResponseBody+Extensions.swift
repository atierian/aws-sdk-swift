// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeDashboardPermissionsOutputResponseBody: Equatable {
    public let dashboardId: String?
    public let dashboardArn: String?
    public let permissions: [ResourcePermission]?
    public let status: Int
    public let requestId: String?
}

extension DescribeDashboardPermissionsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case dashboardArn = "DashboardArn"
        case dashboardId = "DashboardId"
        case permissions = "Permissions"
        case requestId = "RequestId"
        case status = "Status"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let dashboardIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .dashboardId)
        dashboardId = dashboardIdDecoded
        let dashboardArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .dashboardArn)
        dashboardArn = dashboardArnDecoded
        let permissionsContainer = try containerValues.decodeIfPresent([ResourcePermission?].self, forKey: .permissions)
        var permissionsDecoded0:[ResourcePermission]? = nil
        if let permissionsContainer = permissionsContainer {
            permissionsDecoded0 = [ResourcePermission]()
            for structure0 in permissionsContainer {
                if let structure0 = structure0 {
                    permissionsDecoded0?.append(structure0)
                }
            }
        }
        permissions = permissionsDecoded0
        let statusDecoded = try containerValues.decode(Int.self, forKey: .status)
        status = statusDecoded
        let requestIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .requestId)
        requestId = requestIdDecoded
    }
}