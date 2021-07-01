// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetEnrollmentStatusOutputResponse: Equatable {
    /// <p>Confirms the enrollment status of member accounts within the organization, if the
    ///             account is a management account of an organization.</p>
    public let memberAccountsEnrolled: Bool
    /// <p>The enrollment status of the account.</p>
    public let status: Status?
    /// <p>The reason for the enrollment status of the account.</p>
    ///         <p>For example, an account might show a status of <code>Pending</code> because member
    ///             accounts of an organization require more time to be enrolled in the service.</p>
    public let statusReason: String?

    public init (
        memberAccountsEnrolled: Bool = false,
        status: Status? = nil,
        statusReason: String? = nil
    )
    {
        self.memberAccountsEnrolled = memberAccountsEnrolled
        self.status = status
        self.statusReason = statusReason
    }
}

extension GetEnrollmentStatusOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetEnrollmentStatusOutputResponse(memberAccountsEnrolled: \(String(describing: memberAccountsEnrolled)), status: \(String(describing: status)), statusReason: \(String(describing: statusReason)))"}
}