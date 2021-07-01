// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The summary of the application version.</p>
public struct ApplicationVersionSummary: Equatable {
    /// <p>The status of the application.</p>
    public let applicationStatus: ApplicationStatus?
    /// <p>The ID of the application version. Kinesis Data Analytics updates the <code>ApplicationVersionId</code> each time you update the application.</p>
    public let applicationVersionId: Int?

    public init (
        applicationStatus: ApplicationStatus? = nil,
        applicationVersionId: Int? = nil
    )
    {
        self.applicationStatus = applicationStatus
        self.applicationVersionId = applicationVersionId
    }
}

extension ApplicationVersionSummary: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ApplicationVersionSummary(applicationStatus: \(String(describing: applicationStatus)), applicationVersionId: \(String(describing: applicationVersionId)))"}
}