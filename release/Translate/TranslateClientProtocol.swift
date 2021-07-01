// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Provides translation between one source language and another of the same set of
///       languages.</p>
public protocol TranslateClientProtocol {
    /// <p>Creates a parallel data resource in Amazon Translate by importing an input file from
    ///       Amazon S3. Parallel data files contain examples of source phrases and their translations from
    ///       your translation memory. By adding parallel data, you can influence the style, tone, and word
    ///       choice in your translation output.</p>
    func createParallelData(input: CreateParallelDataInput, completion: @escaping (SdkResult<CreateParallelDataOutputResponse, CreateParallelDataOutputError>) -> Void)
    /// <p>Deletes a parallel data resource in Amazon Translate.</p>
    func deleteParallelData(input: DeleteParallelDataInput, completion: @escaping (SdkResult<DeleteParallelDataOutputResponse, DeleteParallelDataOutputError>) -> Void)
    /// <p>A synchronous action that deletes a custom terminology.</p>
    func deleteTerminology(input: DeleteTerminologyInput, completion: @escaping (SdkResult<DeleteTerminologyOutputResponse, DeleteTerminologyOutputError>) -> Void)
    /// <p>Gets the properties associated with an asycnhronous batch translation job including name,
    ///       ID, status, source and target languages, input/output S3 buckets, and so on.</p>
    func describeTextTranslationJob(input: DescribeTextTranslationJobInput, completion: @escaping (SdkResult<DescribeTextTranslationJobOutputResponse, DescribeTextTranslationJobOutputError>) -> Void)
    /// <p>Provides information about a parallel data resource.</p>
    func getParallelData(input: GetParallelDataInput, completion: @escaping (SdkResult<GetParallelDataOutputResponse, GetParallelDataOutputError>) -> Void)
    /// <p>Retrieves a custom terminology.</p>
    func getTerminology(input: GetTerminologyInput, completion: @escaping (SdkResult<GetTerminologyOutputResponse, GetTerminologyOutputError>) -> Void)
    /// <p>Creates or updates a custom terminology, depending on whether or not one already exists
    ///       for the given terminology name. Importing a terminology with the same name as an existing one
    ///       will merge the terminologies based on the chosen merge strategy. Currently, the only supported
    ///       merge strategy is OVERWRITE, and so the imported terminology will overwrite an existing
    ///       terminology of the same name.</p>
    ///          <p>If you import a terminology that overwrites an existing one, the new terminology take up
    ///       to 10 minutes to fully propagate and be available for use in a translation due to cache
    ///       policies with the DataPlane service that performs the translations.</p>
    func importTerminology(input: ImportTerminologyInput, completion: @escaping (SdkResult<ImportTerminologyOutputResponse, ImportTerminologyOutputError>) -> Void)
    /// <p>Provides a list of your parallel data resources in Amazon Translate.</p>
    func listParallelData(input: ListParallelDataInput, completion: @escaping (SdkResult<ListParallelDataOutputResponse, ListParallelDataOutputError>) -> Void)
    /// <p>Provides a list of custom terminologies associated with your account.</p>
    func listTerminologies(input: ListTerminologiesInput, completion: @escaping (SdkResult<ListTerminologiesOutputResponse, ListTerminologiesOutputError>) -> Void)
    /// <p>Gets a list of the batch translation jobs that you have submitted.</p>
    func listTextTranslationJobs(input: ListTextTranslationJobsInput, completion: @escaping (SdkResult<ListTextTranslationJobsOutputResponse, ListTextTranslationJobsOutputError>) -> Void)
    /// <p>Starts an asynchronous batch translation job. Batch translation jobs can be used to
    ///       translate large volumes of text across multiple documents at once. For more information, see
    ///         <a>async</a>.</p>
    ///
    ///          <p>Batch translation jobs can be described with the <a>DescribeTextTranslationJob</a> operation, listed with the <a>ListTextTranslationJobs</a> operation, and stopped with the <a>StopTextTranslationJob</a> operation.</p>
    ///          <note>
    ///             <p>Amazon Translate does not support batch translation of multiple source languages at once.</p>
    ///          </note>
    func startTextTranslationJob(input: StartTextTranslationJobInput, completion: @escaping (SdkResult<StartTextTranslationJobOutputResponse, StartTextTranslationJobOutputError>) -> Void)
    /// <p>Stops an asynchronous batch translation job that is in progress.</p>
    ///          <p>If the job's state is <code>IN_PROGRESS</code>, the job will be marked for termination and
    ///       put into the <code>STOP_REQUESTED</code> state. If the job completes before it can be stopped,
    ///       it is put into the <code>COMPLETED</code> state. Otherwise, the job is put into the
    ///         <code>STOPPED</code> state.</p>
    ///          <p>Asynchronous batch translation jobs are started with the <a>StartTextTranslationJob</a> operation. You can use the <a>DescribeTextTranslationJob</a> or <a>ListTextTranslationJobs</a>
    ///       operations to get a batch translation job's <code>JobId</code>.</p>
    func stopTextTranslationJob(input: StopTextTranslationJobInput, completion: @escaping (SdkResult<StopTextTranslationJobOutputResponse, StopTextTranslationJobOutputError>) -> Void)
    /// <p>Translates input text from the source language to the target language. For a list of
    ///       available languages and language codes, see <a>what-is-languages</a>.</p>
    func translateText(input: TranslateTextInput, completion: @escaping (SdkResult<TranslateTextOutputResponse, TranslateTextOutputError>) -> Void)
    /// <p>Updates a previously created parallel data resource by importing a new input file from
    ///       Amazon S3.</p>
    func updateParallelData(input: UpdateParallelDataInput, completion: @escaping (SdkResult<UpdateParallelDataOutputResponse, UpdateParallelDataOutputError>) -> Void)
}