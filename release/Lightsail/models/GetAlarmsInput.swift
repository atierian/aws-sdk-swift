// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetAlarmsInput: Equatable {
    /// <p>The name of the alarm.</p>
    ///          <p>Specify an alarm name to return information about a specific alarm.</p>
    public let alarmName: String?
    /// <p>The name of the Lightsail resource being monitored by the alarm.</p>
    ///          <p>Specify a monitored resource name to return information about all alarms for a specific
    ///       resource.</p>
    public let monitoredResourceName: String?
    /// <p>The token to advance to the next page of results from your request.</p>
    ///          <p>To get a page token, perform an initial <code>GetAlarms</code> request. If your results
    ///       are paginated, the response will return a next page token that you can specify as the page
    ///       token in a subsequent request.</p>
    public let pageToken: String?

    public init (
        alarmName: String? = nil,
        monitoredResourceName: String? = nil,
        pageToken: String? = nil
    )
    {
        self.alarmName = alarmName
        self.monitoredResourceName = monitoredResourceName
        self.pageToken = pageToken
    }
}

extension GetAlarmsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetAlarmsInput(alarmName: \(String(describing: alarmName)), monitoredResourceName: \(String(describing: monitoredResourceName)), pageToken: \(String(describing: pageToken)))"}
}