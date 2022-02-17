// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// AWS Amplify Admin API
public protocol AmplifyBackendClientProtocol {
    /// This operation clones an existing backend.
    func cloneBackend(input: CloneBackendInput, completion: @escaping (ClientRuntime.SdkResult<CloneBackendOutputResponse, CloneBackendOutputError>) -> Void)
    /// This operation creates a backend for an Amplify app. Backends are automatically created at the time of app creation.
    func createBackend(input: CreateBackendInput, completion: @escaping (ClientRuntime.SdkResult<CreateBackendOutputResponse, CreateBackendOutputError>) -> Void)
    /// Creates a new backend API resource.
    func createBackendAPI(input: CreateBackendAPIInput, completion: @escaping (ClientRuntime.SdkResult<CreateBackendAPIOutputResponse, CreateBackendAPIOutputError>) -> Void)
    /// Creates a new backend authentication resource.
    func createBackendAuth(input: CreateBackendAuthInput, completion: @escaping (ClientRuntime.SdkResult<CreateBackendAuthOutputResponse, CreateBackendAuthOutputError>) -> Void)
    /// Creates a config object for a backend.
    func createBackendConfig(input: CreateBackendConfigInput, completion: @escaping (ClientRuntime.SdkResult<CreateBackendConfigOutputResponse, CreateBackendConfigOutputError>) -> Void)
    /// Creates a backend storage resource.
    func createBackendStorage(input: CreateBackendStorageInput, completion: @escaping (ClientRuntime.SdkResult<CreateBackendStorageOutputResponse, CreateBackendStorageOutputError>) -> Void)
    /// Generates a one-time challenge code to authenticate a user into your Amplify Admin UI.
    func createToken(input: CreateTokenInput, completion: @escaping (ClientRuntime.SdkResult<CreateTokenOutputResponse, CreateTokenOutputError>) -> Void)
    /// Removes an existing environment from your Amplify project.
    func deleteBackend(input: DeleteBackendInput, completion: @escaping (ClientRuntime.SdkResult<DeleteBackendOutputResponse, DeleteBackendOutputError>) -> Void)
    /// Deletes an existing backend API resource.
    func deleteBackendAPI(input: DeleteBackendAPIInput, completion: @escaping (ClientRuntime.SdkResult<DeleteBackendAPIOutputResponse, DeleteBackendAPIOutputError>) -> Void)
    /// Deletes an existing backend authentication resource.
    func deleteBackendAuth(input: DeleteBackendAuthInput, completion: @escaping (ClientRuntime.SdkResult<DeleteBackendAuthOutputResponse, DeleteBackendAuthOutputError>) -> Void)
    /// Removes the specified backend storage resource.
    func deleteBackendStorage(input: DeleteBackendStorageInput, completion: @escaping (ClientRuntime.SdkResult<DeleteBackendStorageOutputResponse, DeleteBackendStorageOutputError>) -> Void)
    /// Deletes the challenge token based on the given appId and sessionId.
    func deleteToken(input: DeleteTokenInput, completion: @escaping (ClientRuntime.SdkResult<DeleteTokenOutputResponse, DeleteTokenOutputError>) -> Void)
    /// Generates a model schema for an existing backend API resource.
    func generateBackendAPIModels(input: GenerateBackendAPIModelsInput, completion: @escaping (ClientRuntime.SdkResult<GenerateBackendAPIModelsOutputResponse, GenerateBackendAPIModelsOutputError>) -> Void)
    /// Provides project-level details for your Amplify UI project.
    func getBackend(input: GetBackendInput, completion: @escaping (ClientRuntime.SdkResult<GetBackendOutputResponse, GetBackendOutputError>) -> Void)
    /// Gets the details for a backend API.
    func getBackendAPI(input: GetBackendAPIInput, completion: @escaping (ClientRuntime.SdkResult<GetBackendAPIOutputResponse, GetBackendAPIOutputError>) -> Void)
    /// Generates a model schema for existing backend API resource.
    func getBackendAPIModels(input: GetBackendAPIModelsInput, completion: @escaping (ClientRuntime.SdkResult<GetBackendAPIModelsOutputResponse, GetBackendAPIModelsOutputError>) -> Void)
    /// Gets a backend auth details.
    func getBackendAuth(input: GetBackendAuthInput, completion: @escaping (ClientRuntime.SdkResult<GetBackendAuthOutputResponse, GetBackendAuthOutputError>) -> Void)
    /// Returns information about a specific job.
    func getBackendJob(input: GetBackendJobInput, completion: @escaping (ClientRuntime.SdkResult<GetBackendJobOutputResponse, GetBackendJobOutputError>) -> Void)
    /// Gets details for a backend storage resource.
    func getBackendStorage(input: GetBackendStorageInput, completion: @escaping (ClientRuntime.SdkResult<GetBackendStorageOutputResponse, GetBackendStorageOutputError>) -> Void)
    /// Gets the challenge token based on the given appId and sessionId.
    func getToken(input: GetTokenInput, completion: @escaping (ClientRuntime.SdkResult<GetTokenOutputResponse, GetTokenOutputError>) -> Void)
    /// Imports an existing backend authentication resource.
    func importBackendAuth(input: ImportBackendAuthInput, completion: @escaping (ClientRuntime.SdkResult<ImportBackendAuthOutputResponse, ImportBackendAuthOutputError>) -> Void)
    /// Imports an existing backend storage resource.
    func importBackendStorage(input: ImportBackendStorageInput, completion: @escaping (ClientRuntime.SdkResult<ImportBackendStorageOutputResponse, ImportBackendStorageOutputError>) -> Void)
    /// Lists the jobs for the backend of an Amplify app.
    func listBackendJobs(input: ListBackendJobsInput, completion: @escaping (ClientRuntime.SdkResult<ListBackendJobsOutputResponse, ListBackendJobsOutputError>) -> Void)
    /// The list of S3 buckets in your account.
    func listS3Buckets(input: ListS3BucketsInput, completion: @escaping (ClientRuntime.SdkResult<ListS3BucketsOutputResponse, ListS3BucketsOutputError>) -> Void)
    /// Removes all backend environments from your Amplify project.
    func removeAllBackends(input: RemoveAllBackendsInput, completion: @escaping (ClientRuntime.SdkResult<RemoveAllBackendsOutputResponse, RemoveAllBackendsOutputError>) -> Void)
    /// Removes the AWS resources required to access the Amplify Admin UI.
    func removeBackendConfig(input: RemoveBackendConfigInput, completion: @escaping (ClientRuntime.SdkResult<RemoveBackendConfigOutputResponse, RemoveBackendConfigOutputError>) -> Void)
    /// Updates an existing backend API resource.
    func updateBackendAPI(input: UpdateBackendAPIInput, completion: @escaping (ClientRuntime.SdkResult<UpdateBackendAPIOutputResponse, UpdateBackendAPIOutputError>) -> Void)
    /// Updates an existing backend authentication resource.
    func updateBackendAuth(input: UpdateBackendAuthInput, completion: @escaping (ClientRuntime.SdkResult<UpdateBackendAuthOutputResponse, UpdateBackendAuthOutputError>) -> Void)
    /// Updates the AWS resources required to access the Amplify Admin UI.
    func updateBackendConfig(input: UpdateBackendConfigInput, completion: @escaping (ClientRuntime.SdkResult<UpdateBackendConfigOutputResponse, UpdateBackendConfigOutputError>) -> Void)
    /// Updates a specific job.
    func updateBackendJob(input: UpdateBackendJobInput, completion: @escaping (ClientRuntime.SdkResult<UpdateBackendJobOutputResponse, UpdateBackendJobOutputError>) -> Void)
    /// Updates an existing backend storage resource.
    func updateBackendStorage(input: UpdateBackendStorageInput, completion: @escaping (ClientRuntime.SdkResult<UpdateBackendStorageOutputResponse, UpdateBackendStorageOutputError>) -> Void)
}

public enum AmplifyBackendClientTypes {}