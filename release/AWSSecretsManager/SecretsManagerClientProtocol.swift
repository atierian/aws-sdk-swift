// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Amazon Web Services Secrets Manager Amazon Web Services Secrets Manager provides a service to enable you to store, manage, and retrieve, secrets. This guide provides descriptions of the Secrets Manager API. For more information about using this service, see the [Amazon Web Services Secrets Manager User Guide](https://docs.aws.amazon.com/secretsmanager/latest/userguide/introduction.html). API Version This version of the Secrets Manager API Reference documents the Secrets Manager API version 2017-10-17. As an alternative to using the API, you can use one of the Amazon Web Services SDKs, which consist of libraries and sample code for various programming languages and platforms such as Java, Ruby, .NET, iOS, and Android. The SDKs provide a convenient way to create programmatic access to Amazon Web Services Secrets Manager. For example, the SDKs provide cryptographically signing requests, managing errors, and retrying requests automatically. For more information about the Amazon Web Services SDKs, including downloading and installing them, see [Tools for Amazon Web Services](http://aws.amazon.com/tools/). We recommend you use the Amazon Web Services SDKs to make programmatic API calls to Secrets Manager. However, you also can use the Secrets Manager HTTP Query API to make direct calls to the Secrets Manager web service. To learn more about the Secrets Manager HTTP Query API, see [Making Query Requests](https://docs.aws.amazon.com/secretsmanager/latest/userguide/query-requests.html) in the Amazon Web Services Secrets Manager User Guide. Secrets Manager API supports GET and POST requests for all actions, and doesn't require you to use GET for some actions and POST for others. However, GET requests are subject to the limitation size of a URL. Therefore, for operations that require larger sizes, use a POST request. Support and Feedback for Amazon Web Services Secrets Manager We welcome your feedback. Send your comments to [awssecretsmanager-feedback@amazon.com](mailto:awssecretsmanager-feedback@amazon.com), or post your feedback and questions in the [Amazon Web Services Secrets Manager Discussion Forum](http://forums.aws.amazon.com/forum.jspa?forumID=296). For more information about the Amazon Web Services Discussion Forums, see [Forums Help](http://forums.aws.amazon.com/help.jspa). How examples are presented The JSON that Amazon Web Services Secrets Manager expects as your request parameters and the service returns as a response to HTTP query requests contain single, long strings without line breaks or white space formatting. The JSON shown in the examples displays the code formatted with both line breaks and white space to improve readability. When example input parameters can also cause long strings extending beyond the screen, you can insert line breaks to enhance readability. You should always submit the input as a single JSON text string. Logging API Requests Amazon Web Services Secrets Manager supports Amazon Web Services CloudTrail, a service that records Amazon Web Services API calls for your Amazon Web Services account and delivers log files to an Amazon S3 bucket. By using information that's collected by Amazon Web Services CloudTrail, you can determine the requests successfully made to Secrets Manager, who made the request, when it was made, and so on. For more about Amazon Web Services Secrets Manager and support for Amazon Web Services CloudTrail, see [Logging Amazon Web Services Secrets Manager Events with Amazon Web Services CloudTrail](https://docs.aws.amazon.com/secretsmanager/latest/userguide/monitoring.html#monitoring_cloudtrail) in the Amazon Web Services Secrets Manager User Guide. To learn more about CloudTrail, including enabling it and find your log files, see the [Amazon Web Services CloudTrail User Guide](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/what_is_cloud_trail_top_level.html).
public protocol SecretsManagerClientProtocol {
    /// Turns off automatic rotation, and if a rotation is currently in progress, cancels the rotation. To turn on automatic rotation again, call [RotateSecret]. If you cancel a rotation in progress, it can leave the VersionStage labels in an unexpected state. Depending on the step of the rotation in progress, you might need to remove the staging label AWSPENDING from the partially created version, specified by the VersionId response value. We recommend you also evaluate the partially rotated new version to see if it should be deleted. You can delete a version by removing all staging labels from it.
    func cancelRotateSecret(input: CancelRotateSecretInput, completion: @escaping (ClientRuntime.SdkResult<CancelRotateSecretOutputResponse, CancelRotateSecretOutputError>) -> Void)
    /// Creates a new secret. A secret is a set of credentials, such as a user name and password, that you store in an encrypted form in Secrets Manager. The secret also includes the connection information to access a database or other service, which Secrets Manager doesn't encrypt. A secret in Secrets Manager consists of both the protected secret data and the important information needed to manage the secret. For information about creating a secret in the console, see [Create a secret](https://docs.aws.amazon.com/secretsmanager/latest/userguide/manage_create-basic-secret.html). To create a secret, you can provide the secret value to be encrypted in either the SecretString parameter or the SecretBinary parameter, but not both. If you include SecretString or SecretBinary then Secrets Manager creates an initial secret version and automatically attaches the staging label AWSCURRENT to it. If you don't specify an KMS encryption key, Secrets Manager uses the Amazon Web Services managed key aws/secretsmanager. If this key doesn't already exist in your account, then Secrets Manager creates it for you automatically. All users and roles in the Amazon Web Services account automatically have access to use aws/secretsmanager. Creating aws/secretsmanager can result in a one-time significant delay in returning the result. If the secret is in a different Amazon Web Services account from the credentials calling the API, then you can't use aws/secretsmanager to encrypt the secret, and you must create and use a customer managed KMS key.
    func createSecret(input: CreateSecretInput, completion: @escaping (ClientRuntime.SdkResult<CreateSecretOutputResponse, CreateSecretOutputError>) -> Void)
    /// Deletes the resource-based permission policy attached to the secret. To attach a policy to a secret, use [PutResourcePolicy].
    func deleteResourcePolicy(input: DeleteResourcePolicyInput, completion: @escaping (ClientRuntime.SdkResult<DeleteResourcePolicyOutputResponse, DeleteResourcePolicyOutputError>) -> Void)
    /// Deletes a secret and all of its versions. You can specify a recovery window during which you can restore the secret. The minimum recovery window is 7 days. The default recovery window is 30 days. Secrets Manager attaches a DeletionDate stamp to the secret that specifies the end of the recovery window. At the end of the recovery window, Secrets Manager deletes the secret permanently. For information about deleting a secret in the console, see [https://docs.aws.amazon.com/secretsmanager/latest/userguide/manage_delete-secret.html](https://docs.aws.amazon.com/secretsmanager/latest/userguide/manage_delete-secret.html). Secrets Manager performs the permanent secret deletion at the end of the waiting period as a background task with low priority. There is no guarantee of a specific time after the recovery window for the permanent delete to occur. At any time before recovery window ends, you can use [RestoreSecret] to remove the DeletionDate and cancel the deletion of the secret. In a secret scheduled for deletion, you cannot access the encrypted secret value. To access that information, first cancel the deletion with [RestoreSecret] and then retrieve the information.
    func deleteSecret(input: DeleteSecretInput, completion: @escaping (ClientRuntime.SdkResult<DeleteSecretOutputResponse, DeleteSecretOutputError>) -> Void)
    /// Retrieves the details of a secret. It does not include the encrypted secret value. Secrets Manager only returns fields that have a value in the response.
    func describeSecret(input: DescribeSecretInput, completion: @escaping (ClientRuntime.SdkResult<DescribeSecretOutputResponse, DescribeSecretOutputError>) -> Void)
    /// Generates a random password. We recommend that you specify the maximum length and include every character type that the system you are generating a password for can support.
    func getRandomPassword(input: GetRandomPasswordInput, completion: @escaping (ClientRuntime.SdkResult<GetRandomPasswordOutputResponse, GetRandomPasswordOutputError>) -> Void)
    /// Retrieves the JSON text of the resource-based policy document attached to the secret. For more information about permissions policies attached to a secret, see [Permissions policies attached to a secret](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_resource-policies.html).
    func getResourcePolicy(input: GetResourcePolicyInput, completion: @escaping (ClientRuntime.SdkResult<GetResourcePolicyOutputResponse, GetResourcePolicyOutputError>) -> Void)
    /// Retrieves the contents of the encrypted fields SecretString or SecretBinary from the specified version of a secret, whichever contains content. For information about retrieving the secret value in the console, see [Retrieve secrets](https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieving-secrets.html). To run this command, you must have secretsmanager:GetSecretValue permissions. If the secret is encrypted using a customer-managed key instead of the Amazon Web Services managed key aws/secretsmanager, then you also need kms:Decrypt permissions for that key.
    func getSecretValue(input: GetSecretValueInput, completion: @escaping (ClientRuntime.SdkResult<GetSecretValueOutputResponse, GetSecretValueOutputError>) -> Void)
    /// Lists the secrets that are stored by Secrets Manager in the Amazon Web Services account. To list the versions of a secret, use [ListSecretVersionIds]. To get the secret value from SecretString or SecretBinary, call [GetSecretValue]. For information about finding secrets in the console, see [Enhanced search capabilities for secrets in Secrets Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/manage_search-secret.html). Minimum permissions To run this command, you must have secretsmanager:ListSecrets permissions.
    func listSecrets(input: ListSecretsInput, completion: @escaping (ClientRuntime.SdkResult<ListSecretsOutputResponse, ListSecretsOutputError>) -> Void)
    /// Lists the versions for a secret. To list the secrets in the account, use [ListSecrets]. To get the secret value from SecretString or SecretBinary, call [GetSecretValue]. Minimum permissions To run this command, you must have secretsmanager:ListSecretVersionIds permissions.
    func listSecretVersionIds(input: ListSecretVersionIdsInput, completion: @escaping (ClientRuntime.SdkResult<ListSecretVersionIdsOutputResponse, ListSecretVersionIdsOutputError>) -> Void)
    /// Attaches a resource-based permission policy to a secret. A resource-based policy is optional. For more information, see [Authentication and access control for Secrets Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html) For information about attaching a policy in the console, see [Attach a permissions policy to a secret](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_resource-based-policies.html).
    func putResourcePolicy(input: PutResourcePolicyInput, completion: @escaping (ClientRuntime.SdkResult<PutResourcePolicyOutputResponse, PutResourcePolicyOutputError>) -> Void)
    /// Creates a new version with a new encrypted secret value and attaches it to the secret. The version can contain a new SecretString value or a new SecretBinary value. We recommend you avoid calling PutSecretValue at a sustained rate of more than once every 10 minutes. When you update the secret value, Secrets Manager creates a new version of the secret. Secrets Manager removes outdated versions when there are more than 100, but it does not remove versions created less than 24 hours ago. If you call PutSecretValue more than once every 10 minutes, you create more versions than Secrets Manager removes, and you will reach the quota for secret versions. You can specify the staging labels to attach to the new version in VersionStages. If you don't include VersionStages, then Secrets Manager automatically moves the staging label AWSCURRENT to this version. If this operation creates the first version for the secret, then Secrets Manager automatically attaches the staging label AWSCURRENT to it . If this operation moves the staging label AWSCURRENT from another version to this version, then Secrets Manager also automatically moves the staging label AWSPREVIOUS to the version that AWSCURRENT was removed from. This operation is idempotent. If a version with a VersionId with the same value as the ClientRequestToken parameter already exists, and you specify the same secret data, the operation succeeds but does nothing. However, if the secret data is different, then the operation fails because you can't modify an existing version; you can only create new ones.
    func putSecretValue(input: PutSecretValueInput, completion: @escaping (ClientRuntime.SdkResult<PutSecretValueOutputResponse, PutSecretValueOutputError>) -> Void)
    /// For a secret that is replicated to other Regions, deletes the secret replicas from the Regions you specify.
    func removeRegionsFromReplication(input: RemoveRegionsFromReplicationInput, completion: @escaping (ClientRuntime.SdkResult<RemoveRegionsFromReplicationOutputResponse, RemoveRegionsFromReplicationOutputError>) -> Void)
    /// Replicates the secret to a new Regions. See [Multi-Region secrets](https://docs.aws.amazon.com/secretsmanager/latest/userguide/create-manage-multi-region-secrets.html).
    func replicateSecretToRegions(input: ReplicateSecretToRegionsInput, completion: @escaping (ClientRuntime.SdkResult<ReplicateSecretToRegionsOutputResponse, ReplicateSecretToRegionsOutputError>) -> Void)
    /// Cancels the scheduled deletion of a secret by removing the DeletedDate time stamp. You can access a secret again after it has been restored.
    func restoreSecret(input: RestoreSecretInput, completion: @escaping (ClientRuntime.SdkResult<RestoreSecretOutputResponse, RestoreSecretOutputError>) -> Void)
    /// Configures and starts the asynchronous process of rotating the secret. If you include the configuration parameters, the operation sets the values for the secret and then immediately starts a rotation. If you don't include the configuration parameters, the operation starts a rotation with the values already stored in the secret. For more information about rotation, see [Rotate secrets](https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotating-secrets.html). To configure rotation, you include the ARN of an Amazon Web Services Lambda function and the schedule for the rotation. The Lambda rotation function creates a new version of the secret and creates or updates the credentials on the database or service to match. After testing the new credentials, the function marks the new secret version with the staging label AWSCURRENT. Then anyone who retrieves the secret gets the new version. For more information, see [How rotation works](https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_how.html). When rotation is successful, the AWSPENDING staging label might be attached to the same version as the AWSCURRENT version, or it might not be attached to any version. If the AWSPENDING staging label is present but not attached to the same version as AWSCURRENT, then any later invocation of RotateSecret assumes that a previous rotation request is still in progress and returns an error. To run this command, you must have secretsmanager:RotateSecret permissions and lambda:InvokeFunction permissions on the function specified in the secret's metadata.
    func rotateSecret(input: RotateSecretInput, completion: @escaping (ClientRuntime.SdkResult<RotateSecretOutputResponse, RotateSecretOutputError>) -> Void)
    /// Removes the link between the replica secret and the primary secret and promotes the replica to a primary secret in the replica Region. You must call this operation from the Region in which you want to promote the replica to a primary secret.
    func stopReplicationToReplica(input: StopReplicationToReplicaInput, completion: @escaping (ClientRuntime.SdkResult<StopReplicationToReplicaOutputResponse, StopReplicationToReplicaOutputError>) -> Void)
    /// Attaches tags to a secret. Tags consist of a key name and a value. Tags are part of the secret's metadata. They are not associated with specific versions of the secret. This operation appends tags to the existing list of tags. The following restrictions apply to tags:
    ///
    /// * Maximum number of tags per secret: 50
    ///
    /// * Maximum key length: 127 Unicode characters in UTF-8
    ///
    /// * Maximum value length: 255 Unicode characters in UTF-8
    ///
    /// * Tag keys and values are case sensitive.
    ///
    /// * Do not use the aws: prefix in your tag names or values because Amazon Web Services reserves it for Amazon Web Services use. You can't edit or delete tag names or values with this prefix. Tags with this prefix do not count against your tags per secret limit.
    ///
    /// * If you use your tagging schema across multiple services and resources, other services might have restrictions on allowed characters. Generally allowed characters: letters, spaces, and numbers representable in UTF-8, plus the following special characters: + - = . _ : / @.
    ///
    ///
    /// If you use tags as part of your security strategy, then adding or removing a tag can change permissions. If successfully completing this operation would result in you losing your permissions for this secret, then the operation is blocked and returns an Access Denied error.
    func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// Removes specific tags from a secret. This operation is idempotent. If a requested tag is not attached to the secret, no error is returned and the secret metadata is unchanged. If you use tags as part of your security strategy, then removing a tag can change permissions. If successfully completing this operation would result in you losing your permissions for this secret, then the operation is blocked and returns an Access Denied error.
    func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    /// Modifies the details of a secret, including metadata and the secret value. To change the secret value, you can also use [PutSecretValue]. To change the rotation configuration of a secret, use [RotateSecret] instead. We recommend you avoid calling UpdateSecret at a sustained rate of more than once every 10 minutes. When you call UpdateSecret to update the secret value, Secrets Manager creates a new version of the secret. Secrets Manager removes outdated versions when there are more than 100, but it does not remove versions created less than 24 hours ago. If you update the secret value more than once every 10 minutes, you create more versions than Secrets Manager removes, and you will reach the quota for secret versions. If you include SecretString or SecretBinary to create a new secret version, Secrets Manager automatically attaches the staging label AWSCURRENT to the new version. If you call this operation with a VersionId that matches an existing version's ClientRequestToken, the operation results in an error. You can't modify an existing version, you can only create a new version. To remove a version, remove all staging labels from it. See [UpdateSecretVersionStage]. If you don't specify an KMS encryption key, Secrets Manager uses the Amazon Web Services managed key aws/secretsmanager. If this key doesn't already exist in your account, then Secrets Manager creates it for you automatically. All users and roles in the Amazon Web Services account automatically have access to use aws/secretsmanager. Creating aws/secretsmanager can result in a one-time significant delay in returning the result. If the secret is in a different Amazon Web Services account from the credentials calling the API, then you can't use aws/secretsmanager to encrypt the secret, and you must create and use a customer managed key. To run this command, you must have secretsmanager:UpdateSecret permissions. If you use a customer managed key, you must also have kms:GenerateDataKey and kms:Decrypt permissions .
    func updateSecret(input: UpdateSecretInput, completion: @escaping (ClientRuntime.SdkResult<UpdateSecretOutputResponse, UpdateSecretOutputError>) -> Void)
    /// Modifies the staging labels attached to a version of a secret. Secrets Manager uses staging labels to track a version as it progresses through the secret rotation process. Each staging label can be attached to only one version at a time. To add a staging label to a version when it is already attached to another version, Secrets Manager first removes it from the other version first and then attaches it to this one. For more information about versions and staging labels, see [Concepts: Version](https://docs.aws.amazon.com/secretsmanager/latest/userguide/getting-started.html#term_version). The staging labels that you specify in the VersionStage parameter are added to the existing list of staging labels for the version. You can move the AWSCURRENT staging label to this version by including it in this call. Whenever you move AWSCURRENT, Secrets Manager automatically moves the label AWSPREVIOUS to the version that AWSCURRENT was removed from. If this action results in the last label being removed from a version, then the version is considered to be 'deprecated' and can be deleted by Secrets Manager.
    func updateSecretVersionStage(input: UpdateSecretVersionStageInput, completion: @escaping (ClientRuntime.SdkResult<UpdateSecretVersionStageOutputResponse, UpdateSecretVersionStageOutputError>) -> Void)
    /// Validates that a resource policy does not grant a wide range of principals access to your secret. A resource-based policy is optional for secrets. The API performs three checks when validating the policy:
    ///
    /// * Sends a call to [Zelkova](https://aws.amazon.com/blogs/security/protect-sensitive-data-in-the-cloud-with-automated-reasoning-zelkova/), an automated reasoning engine, to ensure your resource policy does not allow broad access to your secret, for example policies that use a wildcard for the principal.
    ///
    /// * Checks for correct syntax in a policy.
    ///
    /// * Verifies the policy does not lock out a caller.
    func validateResourcePolicy(input: ValidateResourcePolicyInput, completion: @escaping (ClientRuntime.SdkResult<ValidateResourcePolicyOutputResponse, ValidateResourcePolicyOutputError>) -> Void)
}

public enum SecretsManagerClientTypes {}