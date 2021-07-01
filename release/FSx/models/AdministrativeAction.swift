// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Describes a specific Amazon FSx administrative action for the current Windows or
///             Lustre file system.</p>
public struct AdministrativeAction: Equatable {
    /// <p>Describes the type of administrative action, as follows:</p>
    ///         <ul>
    ///             <li>
    ///                 <p>
    ///                   <code>FILE_SYSTEM_UPDATE</code> - A file system update administrative action initiated by the user from the
    ///                     Amazon FSx console, API (UpdateFileSystem), or CLI (update-file-system).</p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                   <code>STORAGE_OPTIMIZATION</code> - Once the <code>FILE_SYSTEM_UPDATE</code>
    ///                     task to increase a file system's storage capacity completes successfully, a
    ///                     <code>STORAGE_OPTIMIZATION</code> task starts.
    ///                     </p>
    ///                 <ul>
    ///                   <li>
    ///                      <p>For Windows, storage optimization is the process of migrating the file system data
    ///                         to the new, larger disks.</p>
    ///                   </li>
    ///                   <li>
    ///                      <p>For Lustre, storage optimization consists of rebalancing the data across the existing and
    ///                             newly added file servers.</p>
    ///                   </li>
    ///                </ul>
    ///                 <p>You can track the storage optimization progress using the
    ///                         <code>ProgressPercent</code> property. When
    ///                         <code>STORAGE_OPTIMIZATION</code> completes successfully, the parent
    ///                         <code>FILE_SYSTEM_UPDATE</code> action status changes to
    ///                         <code>COMPLETED</code>. For more information, see <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-storage-capacity.html">Managing
    ///                         storage capacity</a> in the <i>Amazon FSx for Windows File Server
    ///                         User Guide</i> and <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/managing-storage-capacity.html">Managing storage
    ///                         and throughput capacity</a> in the <i>Amazon FSx for Lustre User
    ///                         Guide</i>. </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>FILE_SYSTEM_ALIAS_ASSOCIATION</code> - A file system update to associate a new DNS alias with the file system.
    ///                 For more information, see
    ///                 .</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>FILE_SYSTEM_ALIAS_DISASSOCIATION</code> - A file system update to disassociate a DNS alias from the file system.
    ///                 For more information, see .</p>
    ///             </li>
    ///          </ul>
    public let administrativeActionType: AdministrativeActionType?
    /// <p>Provides information about a failed administrative action.</p>
    public let failureDetails: AdministrativeActionFailureDetails?
    /// <p>Provides the percent complete of a <code>STORAGE_OPTIMIZATION</code> administrative action.
    ///             Does not apply to any other administrative action type.</p>
    public let progressPercent: Int?
    /// <p>Time that the administrative action request was received.</p>
    public let requestTime: Date?
    /// <p>Describes the status of the administrative action, as follows:</p>
    ///         <ul>
    ///             <li>
    ///                <p>
    ///                   <code>FAILED</code> - Amazon FSx failed to process the administrative action successfully.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>IN_PROGRESS</code> - Amazon FSx is processing the administrative action.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>PENDING</code> - Amazon FSx is waiting to process the administrative action.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>COMPLETED</code> - Amazon FSx has finished processing the administrative task.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>UPDATED_OPTIMIZING</code> - For a storage capacity increase update, Amazon FSx has
    ///                     updated the file system with the new storage capacity, and is now performing the
    ///                     storage optimization process. For more information, see
    ///                         <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-storage-capacity.html">Managing
    ///                         storage capacity</a> in the <i>Amazon FSx for Windows File Server
    ///                         User Guide</i> and <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/managing-storage-capacity.html">Managing storage
    ///                         and throughput capacity</a> in the <i>Amazon FSx for Lustre User
    ///                         Guide</i>.</p>
    ///             </li>
    ///          </ul>
    public let status: Status?
    /// <p>Describes the target value for the administration action,
    ///             provided in the <code>UpdateFileSystem</code> operation.
    ///            Returned for <code>FILE_SYSTEM_UPDATE</code> administrative actions.
    ///          </p>
    public let targetFileSystemValues: FileSystem?

    public init (
        administrativeActionType: AdministrativeActionType? = nil,
        failureDetails: AdministrativeActionFailureDetails? = nil,
        progressPercent: Int? = nil,
        requestTime: Date? = nil,
        status: Status? = nil,
        targetFileSystemValues: FileSystem? = nil
    )
    {
        self.administrativeActionType = administrativeActionType
        self.failureDetails = failureDetails
        self.progressPercent = progressPercent
        self.requestTime = requestTime
        self.status = status
        self.targetFileSystemValues = targetFileSystemValues
    }
}

extension AdministrativeAction: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AdministrativeAction(administrativeActionType: \(String(describing: administrativeActionType)), failureDetails: \(String(describing: failureDetails)), progressPercent: \(String(describing: progressPercent)), requestTime: \(String(describing: requestTime)), status: \(String(describing: status)), targetFileSystemValues: \(String(describing: targetFileSystemValues)))"}
}