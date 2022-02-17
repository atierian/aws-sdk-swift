// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension AmplifyClient {
    /// Creates a new Amplify app.
    func createApp(input: CreateAppInput) async throws -> CreateAppOutputResponse
    {
        typealias createAppContinuation = CheckedContinuation<CreateAppOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createAppContinuation) in
            createApp(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a new backend environment for an Amplify app.
    func createBackendEnvironment(input: CreateBackendEnvironmentInput) async throws -> CreateBackendEnvironmentOutputResponse
    {
        typealias createBackendEnvironmentContinuation = CheckedContinuation<CreateBackendEnvironmentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createBackendEnvironmentContinuation) in
            createBackendEnvironment(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a new branch for an Amplify app.
    func createBranch(input: CreateBranchInput) async throws -> CreateBranchOutputResponse
    {
        typealias createBranchContinuation = CheckedContinuation<CreateBranchOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createBranchContinuation) in
            createBranch(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a deployment for a manually deployed Amplify app. Manually deployed apps are not connected to a repository.
    func createDeployment(input: CreateDeploymentInput) async throws -> CreateDeploymentOutputResponse
    {
        typealias createDeploymentContinuation = CheckedContinuation<CreateDeploymentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createDeploymentContinuation) in
            createDeployment(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a new domain association for an Amplify app. This action associates a custom domain with the Amplify app
    func createDomainAssociation(input: CreateDomainAssociationInput) async throws -> CreateDomainAssociationOutputResponse
    {
        typealias createDomainAssociationContinuation = CheckedContinuation<CreateDomainAssociationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createDomainAssociationContinuation) in
            createDomainAssociation(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a new webhook on an Amplify app.
    func createWebhook(input: CreateWebhookInput) async throws -> CreateWebhookOutputResponse
    {
        typealias createWebhookContinuation = CheckedContinuation<CreateWebhookOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createWebhookContinuation) in
            createWebhook(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes an existing Amplify app specified by an app ID.
    func deleteApp(input: DeleteAppInput) async throws -> DeleteAppOutputResponse
    {
        typealias deleteAppContinuation = CheckedContinuation<DeleteAppOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteAppContinuation) in
            deleteApp(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes a backend environment for an Amplify app.
    func deleteBackendEnvironment(input: DeleteBackendEnvironmentInput) async throws -> DeleteBackendEnvironmentOutputResponse
    {
        typealias deleteBackendEnvironmentContinuation = CheckedContinuation<DeleteBackendEnvironmentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteBackendEnvironmentContinuation) in
            deleteBackendEnvironment(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes a branch for an Amplify app.
    func deleteBranch(input: DeleteBranchInput) async throws -> DeleteBranchOutputResponse
    {
        typealias deleteBranchContinuation = CheckedContinuation<DeleteBranchOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteBranchContinuation) in
            deleteBranch(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes a domain association for an Amplify app.
    func deleteDomainAssociation(input: DeleteDomainAssociationInput) async throws -> DeleteDomainAssociationOutputResponse
    {
        typealias deleteDomainAssociationContinuation = CheckedContinuation<DeleteDomainAssociationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteDomainAssociationContinuation) in
            deleteDomainAssociation(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes a job for a branch of an Amplify app.
    func deleteJob(input: DeleteJobInput) async throws -> DeleteJobOutputResponse
    {
        typealias deleteJobContinuation = CheckedContinuation<DeleteJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteJobContinuation) in
            deleteJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes a webhook.
    func deleteWebhook(input: DeleteWebhookInput) async throws -> DeleteWebhookOutputResponse
    {
        typealias deleteWebhookContinuation = CheckedContinuation<DeleteWebhookOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteWebhookContinuation) in
            deleteWebhook(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns the website access logs for a specific time range using a presigned URL.
    func generateAccessLogs(input: GenerateAccessLogsInput) async throws -> GenerateAccessLogsOutputResponse
    {
        typealias generateAccessLogsContinuation = CheckedContinuation<GenerateAccessLogsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: generateAccessLogsContinuation) in
            generateAccessLogs(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns an existing Amplify app by appID.
    func getApp(input: GetAppInput) async throws -> GetAppOutputResponse
    {
        typealias getAppContinuation = CheckedContinuation<GetAppOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getAppContinuation) in
            getApp(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns the artifact info that corresponds to an artifact id.
    func getArtifactUrl(input: GetArtifactUrlInput) async throws -> GetArtifactUrlOutputResponse
    {
        typealias getArtifactUrlContinuation = CheckedContinuation<GetArtifactUrlOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getArtifactUrlContinuation) in
            getArtifactUrl(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a backend environment for an Amplify app.
    func getBackendEnvironment(input: GetBackendEnvironmentInput) async throws -> GetBackendEnvironmentOutputResponse
    {
        typealias getBackendEnvironmentContinuation = CheckedContinuation<GetBackendEnvironmentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getBackendEnvironmentContinuation) in
            getBackendEnvironment(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a branch for an Amplify app.
    func getBranch(input: GetBranchInput) async throws -> GetBranchOutputResponse
    {
        typealias getBranchContinuation = CheckedContinuation<GetBranchOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getBranchContinuation) in
            getBranch(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns the domain information for an Amplify app.
    func getDomainAssociation(input: GetDomainAssociationInput) async throws -> GetDomainAssociationOutputResponse
    {
        typealias getDomainAssociationContinuation = CheckedContinuation<GetDomainAssociationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getDomainAssociationContinuation) in
            getDomainAssociation(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a job for a branch of an Amplify app.
    func getJob(input: GetJobInput) async throws -> GetJobOutputResponse
    {
        typealias getJobContinuation = CheckedContinuation<GetJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getJobContinuation) in
            getJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns the webhook information that corresponds to a specified webhook ID.
    func getWebhook(input: GetWebhookInput) async throws -> GetWebhookOutputResponse
    {
        typealias getWebhookContinuation = CheckedContinuation<GetWebhookOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getWebhookContinuation) in
            getWebhook(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a list of the existing Amplify apps.
    func listApps(input: ListAppsInput) async throws -> ListAppsOutputResponse
    {
        typealias listAppsContinuation = CheckedContinuation<ListAppsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listAppsContinuation) in
            listApps(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a list of artifacts for a specified app, branch, and job.
    func listArtifacts(input: ListArtifactsInput) async throws -> ListArtifactsOutputResponse
    {
        typealias listArtifactsContinuation = CheckedContinuation<ListArtifactsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listArtifactsContinuation) in
            listArtifacts(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the backend environments for an Amplify app.
    func listBackendEnvironments(input: ListBackendEnvironmentsInput) async throws -> ListBackendEnvironmentsOutputResponse
    {
        typealias listBackendEnvironmentsContinuation = CheckedContinuation<ListBackendEnvironmentsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listBackendEnvironmentsContinuation) in
            listBackendEnvironments(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the branches of an Amplify app.
    func listBranches(input: ListBranchesInput) async throws -> ListBranchesOutputResponse
    {
        typealias listBranchesContinuation = CheckedContinuation<ListBranchesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listBranchesContinuation) in
            listBranches(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns the domain associations for an Amplify app.
    func listDomainAssociations(input: ListDomainAssociationsInput) async throws -> ListDomainAssociationsOutputResponse
    {
        typealias listDomainAssociationsContinuation = CheckedContinuation<ListDomainAssociationsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listDomainAssociationsContinuation) in
            listDomainAssociations(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the jobs for a branch of an Amplify app.
    func listJobs(input: ListJobsInput) async throws -> ListJobsOutputResponse
    {
        typealias listJobsContinuation = CheckedContinuation<ListJobsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listJobsContinuation) in
            listJobs(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a list of tags for a specified Amazon Resource Name (ARN).
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    {
        typealias listTagsForResourceContinuation = CheckedContinuation<ListTagsForResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listTagsForResourceContinuation) in
            listTagsForResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a list of webhooks for an Amplify app.
    func listWebhooks(input: ListWebhooksInput) async throws -> ListWebhooksOutputResponse
    {
        typealias listWebhooksContinuation = CheckedContinuation<ListWebhooksOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listWebhooksContinuation) in
            listWebhooks(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Starts a deployment for a manually deployed app. Manually deployed apps are not connected to a repository.
    func startDeployment(input: StartDeploymentInput) async throws -> StartDeploymentOutputResponse
    {
        typealias startDeploymentContinuation = CheckedContinuation<StartDeploymentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startDeploymentContinuation) in
            startDeployment(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Starts a new job for a branch of an Amplify app.
    func startJob(input: StartJobInput) async throws -> StartJobOutputResponse
    {
        typealias startJobContinuation = CheckedContinuation<StartJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startJobContinuation) in
            startJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Stops a job that is in progress for a branch of an Amplify app.
    func stopJob(input: StopJobInput) async throws -> StopJobOutputResponse
    {
        typealias stopJobContinuation = CheckedContinuation<StopJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: stopJobContinuation) in
            stopJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Tags the resource with a tag key and value.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    {
        typealias tagResourceContinuation = CheckedContinuation<TagResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: tagResourceContinuation) in
            tagResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Untags a resource with a specified Amazon Resource Name (ARN).
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    {
        typealias untagResourceContinuation = CheckedContinuation<UntagResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: untagResourceContinuation) in
            untagResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates an existing Amplify app.
    func updateApp(input: UpdateAppInput) async throws -> UpdateAppOutputResponse
    {
        typealias updateAppContinuation = CheckedContinuation<UpdateAppOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateAppContinuation) in
            updateApp(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates a branch for an Amplify app.
    func updateBranch(input: UpdateBranchInput) async throws -> UpdateBranchOutputResponse
    {
        typealias updateBranchContinuation = CheckedContinuation<UpdateBranchOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateBranchContinuation) in
            updateBranch(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a new domain association for an Amplify app.
    func updateDomainAssociation(input: UpdateDomainAssociationInput) async throws -> UpdateDomainAssociationOutputResponse
    {
        typealias updateDomainAssociationContinuation = CheckedContinuation<UpdateDomainAssociationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateDomainAssociationContinuation) in
            updateDomainAssociation(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates a webhook.
    func updateWebhook(input: UpdateWebhookInput) async throws -> UpdateWebhookOutputResponse
    {
        typealias updateWebhookContinuation = CheckedContinuation<UpdateWebhookOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateWebhookContinuation) in
            updateWebhook(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

}
#endif