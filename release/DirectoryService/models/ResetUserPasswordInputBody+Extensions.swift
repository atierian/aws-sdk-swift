// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ResetUserPasswordInputBody: Equatable {
    public let directoryId: String?
    public let userName: String?
    public let newPassword: String?
}

extension ResetUserPasswordInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case directoryId = "DirectoryId"
        case newPassword = "NewPassword"
        case userName = "UserName"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let directoryIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .directoryId)
        directoryId = directoryIdDecoded
        let userNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .userName)
        userName = userNameDecoded
        let newPasswordDecoded = try containerValues.decodeIfPresent(String.self, forKey: .newPassword)
        newPassword = newPasswordDecoded
    }
}