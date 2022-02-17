// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Migration Hub Strategy Recommendations This API reference provides descriptions, syntax, and other details about each of the actions and data types for Migration Hub Strategy Recommendations (Strategy Recommendations). The topic for each action shows the API request parameters and the response. Alternatively, you can use one of the AWS SDKs to access an API that is tailored to the programming language or platform that you're using. For more information, see [AWS SDKs](http://aws.amazon.com/tools/#SDKs).
public protocol MigrationHubStrategyClientProtocol {
    /// Retrieves details about an application component.
    func getApplicationComponentDetails(input: GetApplicationComponentDetailsInput, completion: @escaping (ClientRuntime.SdkResult<GetApplicationComponentDetailsOutputResponse, GetApplicationComponentDetailsOutputError>) -> Void)
    /// Retrieves a list of all the recommended strategies and tools for an application component running on a server.
    func getApplicationComponentStrategies(input: GetApplicationComponentStrategiesInput, completion: @escaping (ClientRuntime.SdkResult<GetApplicationComponentStrategiesOutputResponse, GetApplicationComponentStrategiesOutputError>) -> Void)
    /// Retrieves the status of an on-going assessment.
    func getAssessment(input: GetAssessmentInput, completion: @escaping (ClientRuntime.SdkResult<GetAssessmentOutputResponse, GetAssessmentOutputError>) -> Void)
    /// Retrieves the details about a specific import task.
    func getImportFileTask(input: GetImportFileTaskInput, completion: @escaping (ClientRuntime.SdkResult<GetImportFileTaskOutputResponse, GetImportFileTaskOutputError>) -> Void)
    /// Retrieves your migration and modernization preferences.
    func getPortfolioPreferences(input: GetPortfolioPreferencesInput, completion: @escaping (ClientRuntime.SdkResult<GetPortfolioPreferencesOutputResponse, GetPortfolioPreferencesOutputError>) -> Void)
    /// Retrieves overall summary including the number of servers to rehost and the overall number of anti-patterns.
    func getPortfolioSummary(input: GetPortfolioSummaryInput, completion: @escaping (ClientRuntime.SdkResult<GetPortfolioSummaryOutputResponse, GetPortfolioSummaryOutputError>) -> Void)
    /// Retrieves detailed information about the specified recommendation report.
    func getRecommendationReportDetails(input: GetRecommendationReportDetailsInput, completion: @escaping (ClientRuntime.SdkResult<GetRecommendationReportDetailsOutputResponse, GetRecommendationReportDetailsOutputError>) -> Void)
    /// Retrieves detailed information about a specified server.
    func getServerDetails(input: GetServerDetailsInput, completion: @escaping (ClientRuntime.SdkResult<GetServerDetailsOutputResponse, GetServerDetailsOutputError>) -> Void)
    /// Retrieves recommended strategies and tools for the specified server.
    func getServerStrategies(input: GetServerStrategiesInput, completion: @escaping (ClientRuntime.SdkResult<GetServerStrategiesOutputResponse, GetServerStrategiesOutputError>) -> Void)
    /// Retrieves a list of all the application components (processes).
    func listApplicationComponents(input: ListApplicationComponentsInput, completion: @escaping (ClientRuntime.SdkResult<ListApplicationComponentsOutputResponse, ListApplicationComponentsOutputError>) -> Void)
    /// Retrieves a list of all the installed collectors.
    func listCollectors(input: ListCollectorsInput, completion: @escaping (ClientRuntime.SdkResult<ListCollectorsOutputResponse, ListCollectorsOutputError>) -> Void)
    /// Retrieves a list of all the imports performed.
    func listImportFileTask(input: ListImportFileTaskInput, completion: @escaping (ClientRuntime.SdkResult<ListImportFileTaskOutputResponse, ListImportFileTaskOutputError>) -> Void)
    /// Returns a list of all the servers.
    func listServers(input: ListServersInput, completion: @escaping (ClientRuntime.SdkResult<ListServersOutputResponse, ListServersOutputError>) -> Void)
    /// Saves the specified migration and modernization preferences.
    func putPortfolioPreferences(input: PutPortfolioPreferencesInput, completion: @escaping (ClientRuntime.SdkResult<PutPortfolioPreferencesOutputResponse, PutPortfolioPreferencesOutputError>) -> Void)
    /// Starts the assessment of an on-premises environment.
    func startAssessment(input: StartAssessmentInput, completion: @escaping (ClientRuntime.SdkResult<StartAssessmentOutputResponse, StartAssessmentOutputError>) -> Void)
    /// Starts a file import.
    func startImportFileTask(input: StartImportFileTaskInput, completion: @escaping (ClientRuntime.SdkResult<StartImportFileTaskOutputResponse, StartImportFileTaskOutputError>) -> Void)
    /// Starts generating a recommendation report.
    func startRecommendationReportGeneration(input: StartRecommendationReportGenerationInput, completion: @escaping (ClientRuntime.SdkResult<StartRecommendationReportGenerationOutputResponse, StartRecommendationReportGenerationOutputError>) -> Void)
    /// Stops the assessment of an on-premises environment.
    func stopAssessment(input: StopAssessmentInput, completion: @escaping (ClientRuntime.SdkResult<StopAssessmentOutputResponse, StopAssessmentOutputError>) -> Void)
    /// Updates the configuration of an application component.
    func updateApplicationComponentConfig(input: UpdateApplicationComponentConfigInput, completion: @escaping (ClientRuntime.SdkResult<UpdateApplicationComponentConfigOutputResponse, UpdateApplicationComponentConfigOutputError>) -> Void)
    /// Updates the configuration of the specified server.
    func updateServerConfig(input: UpdateServerConfigInput, completion: @escaping (ClientRuntime.SdkResult<UpdateServerConfigOutputResponse, UpdateServerConfigOutputError>) -> Void)
}

public enum MigrationHubStrategyClientTypes {}