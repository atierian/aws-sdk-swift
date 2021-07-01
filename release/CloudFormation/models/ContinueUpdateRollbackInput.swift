// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The input for the <a>ContinueUpdateRollback</a> action.</p>
public struct ContinueUpdateRollbackInput: Equatable {
    /// <p>A unique identifier for this <code>ContinueUpdateRollback</code> request. Specify
    ///          this token if you plan to retry requests so that AWS CloudFormation knows that you're not
    ///          attempting to continue the rollback to a stack with the same name. You might retry
    ///          <code>ContinueUpdateRollback</code> requests to ensure that AWS CloudFormation
    ///          successfully received them.</p>
    public let clientRequestToken: String?
    /// <p>A list of the logical IDs of the resources that AWS CloudFormation skips during the
    ///          continue update rollback operation. You can specify only resources that are in the
    ///             <code>UPDATE_FAILED</code> state because a rollback failed. You can't specify resources
    ///          that are in the <code>UPDATE_FAILED</code> state for other reasons, for example, because an
    ///          update was cancelled. To check why a resource update failed, use the <a>DescribeStackResources</a> action, and view the resource status reason. </p>
    ///          <important>
    ///             <p>Specify this property to skip rolling back resources that AWS CloudFormation can't
    ///             successfully roll back. We recommend that you <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/troubleshooting.html#troubleshooting-errors-update-rollback-failed"> troubleshoot</a> resources before skipping them. AWS CloudFormation sets the
    ///             status of the specified resources to <code>UPDATE_COMPLETE</code> and continues to roll
    ///             back the stack. After the rollback is complete, the state of the skipped resources will
    ///             be inconsistent with the state of the resources in the stack template. Before performing
    ///             another stack update, you must update the stack or resources to be consistent with each
    ///             other. If you don't, subsequent stack updates might fail, and the stack will become
    ///             unrecoverable. </p>
    ///          </important>
    ///          <p>Specify the minimum number of resources required to successfully roll back your
    ///          stack. For example, a failed resource update might cause dependent resources to fail. In
    ///          this case, it might not be necessary to skip the dependent resources. </p>
    ///          <p>To skip resources that are part of nested stacks, use the following format:
    ///             <code>NestedStackName.ResourceLogicalID</code>. If you want to specify the logical ID of
    ///          a stack resource (<code>Type: AWS::CloudFormation::Stack</code>) in the
    ///             <code>ResourcesToSkip</code> list, then its corresponding embedded stack must be in one
    ///          of the following states: <code>DELETE_IN_PROGRESS</code>, <code>DELETE_COMPLETE</code>, or
    ///             <code>DELETE_FAILED</code>. </p>
    ///          <note>
    ///             <p>Don't confuse a child stack's name with its corresponding logical ID defined in
    ///             the parent stack. For an example of a continue update rollback operation with nested
    ///             stacks, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-continueupdaterollback.html#nested-stacks">Using ResourcesToSkip to recover a nested stacks hierarchy</a>. </p>
    ///          </note>
    public let resourcesToSkip: [String]?
    /// <p>The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role
    ///          that AWS CloudFormation assumes to roll back the stack. AWS CloudFormation uses the role's
    ///          credentials to make calls on your behalf. AWS CloudFormation always uses this role for all
    ///          future operations on the stack. As long as users have permission to operate on the stack,
    ///          AWS CloudFormation uses this role even if the users don't have permission to pass it.
    ///          Ensure that the role grants least privilege.</p>
    ///          <p>If you don't specify a value, AWS CloudFormation uses the role that was previously
    ///          associated with the stack. If no role is available, AWS CloudFormation uses a temporary
    ///          session that is generated from your user credentials.</p>
    public let roleARN: String?
    /// <p>The name or the unique ID of the stack that you want to continue rolling
    ///          back.</p>
    ///          <note>
    ///             <p>Don't specify the name of a nested stack (a stack that was created by using the
    ///                <code>AWS::CloudFormation::Stack</code> resource). Instead, use this operation on the
    ///             parent stack (the stack that contains the <code>AWS::CloudFormation::Stack</code>
    ///             resource).</p>
    ///          </note>
    public let stackName: String?

    public init (
        clientRequestToken: String? = nil,
        resourcesToSkip: [String]? = nil,
        roleARN: String? = nil,
        stackName: String? = nil
    )
    {
        self.clientRequestToken = clientRequestToken
        self.resourcesToSkip = resourcesToSkip
        self.roleARN = roleARN
        self.stackName = stackName
    }
}

extension ContinueUpdateRollbackInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ContinueUpdateRollbackInput(clientRequestToken: \(String(describing: clientRequestToken)), resourcesToSkip: \(String(describing: resourcesToSkip)), roleARN: \(String(describing: roleARN)), stackName: \(String(describing: stackName)))"}
}