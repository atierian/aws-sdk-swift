// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeResourceOutputResponse: Equatable {
    /// <p>The booking options for the described resource.</p>
    public let bookingOptions: BookingOptions?
    /// <p>The date and time when a resource was disabled from WorkMail, in UNIX epoch time
    ///          format.</p>
    public let disabledDate: Date?
    /// <p>The email of the described resource.</p>
    public let email: String?
    /// <p>The date and time when a resource was enabled for WorkMail, in UNIX epoch time
    ///          format.</p>
    public let enabledDate: Date?
    /// <p>The name of the described resource.</p>
    public let name: String?
    /// <p>The identifier of the described resource.</p>
    public let resourceId: String?
    /// <p>The state of the resource: enabled (registered to Amazon WorkMail), disabled (deregistered
    ///          or never registered to WorkMail), or deleted.</p>
    public let state: EntityState?
    /// <p>The type of the described resource.</p>
    public let type: ResourceType?

    public init (
        bookingOptions: BookingOptions? = nil,
        disabledDate: Date? = nil,
        email: String? = nil,
        enabledDate: Date? = nil,
        name: String? = nil,
        resourceId: String? = nil,
        state: EntityState? = nil,
        type: ResourceType? = nil
    )
    {
        self.bookingOptions = bookingOptions
        self.disabledDate = disabledDate
        self.email = email
        self.enabledDate = enabledDate
        self.name = name
        self.resourceId = resourceId
        self.state = state
        self.type = type
    }
}

extension DescribeResourceOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeResourceOutputResponse(bookingOptions: \(String(describing: bookingOptions)), disabledDate: \(String(describing: disabledDate)), email: \(String(describing: email)), enabledDate: \(String(describing: enabledDate)), name: \(String(describing: name)), resourceId: \(String(describing: resourceId)), state: \(String(describing: state)), type: \(String(describing: type)))"}
}