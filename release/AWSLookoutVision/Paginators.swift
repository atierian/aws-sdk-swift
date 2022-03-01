// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListDatasetEntriesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListDatasetEntriesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListDatasetEntriesOutputResponse`
extension LookoutVisionClient {
    public func listDatasetEntriesPaginated(input: ListDatasetEntriesInput) -> ClientRuntime.PaginatorSequence<ListDatasetEntriesInput, ListDatasetEntriesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListDatasetEntriesInput, ListDatasetEntriesOutputResponse>(input: input, inputKey: \ListDatasetEntriesInput.nextToken, outputKey: \ListDatasetEntriesOutputResponse.nextToken, paginationFunction: self.listDatasetEntries(input:))
    }
}

extension ListDatasetEntriesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDatasetEntriesInput {
        return ListDatasetEntriesInput(
            afterCreationDate: self.afterCreationDate,
            anomalyClass: self.anomalyClass,
            beforeCreationDate: self.beforeCreationDate,
            datasetType: self.datasetType,
            labeled: self.labeled,
            maxResults: self.maxResults,
            nextToken: token,
            projectName: self.projectName,
            sourceRefContains: self.sourceRefContains
        )}
}

/// Paginate over `[ListModelPackagingJobsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListModelPackagingJobsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListModelPackagingJobsOutputResponse`
extension LookoutVisionClient {
    public func listModelPackagingJobsPaginated(input: ListModelPackagingJobsInput) -> ClientRuntime.PaginatorSequence<ListModelPackagingJobsInput, ListModelPackagingJobsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListModelPackagingJobsInput, ListModelPackagingJobsOutputResponse>(input: input, inputKey: \ListModelPackagingJobsInput.nextToken, outputKey: \ListModelPackagingJobsOutputResponse.nextToken, paginationFunction: self.listModelPackagingJobs(input:))
    }
}

extension ListModelPackagingJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListModelPackagingJobsInput {
        return ListModelPackagingJobsInput(
            maxResults: self.maxResults,
            nextToken: token,
            projectName: self.projectName
        )}
}

/// Paginate over `[ListModelsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListModelsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListModelsOutputResponse`
extension LookoutVisionClient {
    public func listModelsPaginated(input: ListModelsInput) -> ClientRuntime.PaginatorSequence<ListModelsInput, ListModelsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListModelsInput, ListModelsOutputResponse>(input: input, inputKey: \ListModelsInput.nextToken, outputKey: \ListModelsOutputResponse.nextToken, paginationFunction: self.listModels(input:))
    }
}

extension ListModelsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListModelsInput {
        return ListModelsInput(
            maxResults: self.maxResults,
            nextToken: token,
            projectName: self.projectName
        )}
}

/// Paginate over `[ListProjectsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListProjectsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListProjectsOutputResponse`
extension LookoutVisionClient {
    public func listProjectsPaginated(input: ListProjectsInput) -> ClientRuntime.PaginatorSequence<ListProjectsInput, ListProjectsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListProjectsInput, ListProjectsOutputResponse>(input: input, inputKey: \ListProjectsInput.nextToken, outputKey: \ListProjectsOutputResponse.nextToken, paginationFunction: self.listProjects(input:))
    }
}

extension ListProjectsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListProjectsInput {
        return ListProjectsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}