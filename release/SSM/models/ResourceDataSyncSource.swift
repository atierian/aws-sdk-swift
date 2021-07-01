// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Information about the source of the data included in the resource data sync.</p>
public struct ResourceDataSyncSource: Equatable {
    /// <p>Information about the AwsOrganizationsSource resource data sync source. A sync source of
    ///    this type can synchronize data from AWS Organizations.</p>
    public let awsOrganizationsSource: ResourceDataSyncAwsOrganizationsSource?
    /// <p>When you create a resource data sync, if you choose one of the AWS Organizations options, then Systems Manager
    ///    automatically enables all OpsData sources in the selected AWS Regions for all AWS accounts in
    ///    your organization (or in the selected organization units). For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/Explorer-resouce-data-sync-multiple-accounts-and-regions.html">About multiple account and Region resource data syncs</a> in the
    ///     <i>AWS Systems Manager User Guide</i>.</p>
    public let enableAllOpsDataSources: Bool
    /// <p>Whether to automatically synchronize and aggregate data from new AWS Regions when those
    ///    Regions come online.</p>
    public let includeFutureRegions: Bool
    /// <p>The <code>SyncSource</code> AWS Regions included in the resource data sync.</p>
    public let sourceRegions: [String]?
    /// <p>The type of data source for the resource data sync. <code>SourceType</code> is either
    ///     <code>AwsOrganizations</code> (if an organization is present in AWS Organizations) or
    ///     <code>SingleAccountMultiRegions</code>.</p>
    public let sourceType: String?

    public init (
        awsOrganizationsSource: ResourceDataSyncAwsOrganizationsSource? = nil,
        enableAllOpsDataSources: Bool = false,
        includeFutureRegions: Bool = false,
        sourceRegions: [String]? = nil,
        sourceType: String? = nil
    )
    {
        self.awsOrganizationsSource = awsOrganizationsSource
        self.enableAllOpsDataSources = enableAllOpsDataSources
        self.includeFutureRegions = includeFutureRegions
        self.sourceRegions = sourceRegions
        self.sourceType = sourceType
    }
}

extension ResourceDataSyncSource: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ResourceDataSyncSource(awsOrganizationsSource: \(String(describing: awsOrganizationsSource)), enableAllOpsDataSources: \(String(describing: enableAllOpsDataSources)), includeFutureRegions: \(String(describing: includeFutureRegions)), sourceRegions: \(String(describing: sourceRegions)), sourceType: \(String(describing: sourceType)))"}
}