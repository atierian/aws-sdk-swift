// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Amazon Kinesis Data Analytics is a fully managed service that you can use to process and analyze streaming data using Java, SQL, or Scala. The service enables you to quickly author and run Java, SQL, or Scala code against streaming sources to perform time series analytics, feed real-time dashboards, and create real-time metrics.
public protocol KinesisAnalyticsV2ClientProtocol {
    /// Adds an Amazon CloudWatch log stream to monitor application configuration errors.
    func addApplicationCloudWatchLoggingOption(input: AddApplicationCloudWatchLoggingOptionInput) async throws -> AddApplicationCloudWatchLoggingOptionOutputResponse
    /// Adds a streaming source to your SQL-based Kinesis Data Analytics application. You can add a streaming source when you create an application, or you can use this operation to add a streaming source after you create an application. For more information, see [CreateApplication]. Any configuration update, including adding a streaming source using this operation, results in a new version of the application. You can use the [DescribeApplication] operation to find the current application version.
    func addApplicationInput(input: AddApplicationInputInput) async throws -> AddApplicationInputOutputResponse
    /// Adds an [InputProcessingConfiguration] to a SQL-based Kinesis Data Analytics application. An input processor pre-processes records on the input stream before the application's SQL code executes. Currently, the only input processor available is [Amazon Lambda](https://docs.aws.amazon.com/lambda/).
    func addApplicationInputProcessingConfiguration(input: AddApplicationInputProcessingConfigurationInput) async throws -> AddApplicationInputProcessingConfigurationOutputResponse
    /// Adds an external destination to your SQL-based Kinesis Data Analytics application. If you want Kinesis Data Analytics to deliver data from an in-application stream within your application to an external destination (such as an Kinesis data stream, a Kinesis Data Firehose delivery stream, or an Amazon Lambda function), you add the relevant configuration to your application using this operation. You can configure one or more outputs for your application. Each output configuration maps an in-application stream and an external destination. You can use one of the output configurations to deliver data from your in-application error stream to an external destination so that you can analyze the errors. Any configuration update, including adding a streaming source using this operation, results in a new version of the application. You can use the [DescribeApplication] operation to find the current application version.
    func addApplicationOutput(input: AddApplicationOutputInput) async throws -> AddApplicationOutputOutputResponse
    /// Adds a reference data source to an existing SQL-based Kinesis Data Analytics application. Kinesis Data Analytics reads reference data (that is, an Amazon S3 object) and creates an in-application table within your application. In the request, you provide the source (S3 bucket name and object key name), name of the in-application table to create, and the necessary mapping information that describes how data in an Amazon S3 object maps to columns in the resulting in-application table.
    func addApplicationReferenceDataSource(input: AddApplicationReferenceDataSourceInput) async throws -> AddApplicationReferenceDataSourceOutputResponse
    /// Adds a Virtual Private Cloud (VPC) configuration to the application. Applications can use VPCs to store and access resources securely. Note the following about VPC configurations for Kinesis Data Analytics applications:
    ///
    /// * VPC configurations are not supported for SQL applications.
    ///
    /// * When a VPC is added to a Kinesis Data Analytics application, the application can no longer be accessed from the Internet directly. To enable Internet access to the application, add an Internet gateway to your VPC.
    func addApplicationVpcConfiguration(input: AddApplicationVpcConfigurationInput) async throws -> AddApplicationVpcConfigurationOutputResponse
    /// Creates a Kinesis Data Analytics application. For information about creating a Kinesis Data Analytics application, see [Creating an Application](https://docs.aws.amazon.com/kinesisanalytics/latest/java/getting-started.html).
    func createApplication(input: CreateApplicationInput) async throws -> CreateApplicationOutputResponse
    /// Creates and returns a URL that you can use to connect to an application's extension. Currently, the only available extension is the Apache Flink dashboard. The IAM role or user used to call this API defines the permissions to access the extension. After the presigned URL is created, no additional permission is required to access this URL. IAM authorization policies for this API are also enforced for every HTTP request that attempts to connect to the extension. You control the amount of time that the URL will be valid using the SessionExpirationDurationInSeconds parameter. If you do not provide this parameter, the returned URL is valid for twelve hours. The URL that you get from a call to CreateApplicationPresignedUrl must be used within 3 minutes to be valid. If you first try to use the URL after the 3-minute limit expires, the service returns an HTTP 403 Forbidden error.
    func createApplicationPresignedUrl(input: CreateApplicationPresignedUrlInput) async throws -> CreateApplicationPresignedUrlOutputResponse
    /// Creates a snapshot of the application's state data.
    func createApplicationSnapshot(input: CreateApplicationSnapshotInput) async throws -> CreateApplicationSnapshotOutputResponse
    /// Deletes the specified application. Kinesis Data Analytics halts application execution and deletes the application.
    func deleteApplication(input: DeleteApplicationInput) async throws -> DeleteApplicationOutputResponse
    /// Deletes an Amazon CloudWatch log stream from an Kinesis Data Analytics application.
    func deleteApplicationCloudWatchLoggingOption(input: DeleteApplicationCloudWatchLoggingOptionInput) async throws -> DeleteApplicationCloudWatchLoggingOptionOutputResponse
    /// Deletes an [InputProcessingConfiguration] from an input.
    func deleteApplicationInputProcessingConfiguration(input: DeleteApplicationInputProcessingConfigurationInput) async throws -> DeleteApplicationInputProcessingConfigurationOutputResponse
    /// Deletes the output destination configuration from your SQL-based Kinesis Data Analytics application's configuration. Kinesis Data Analytics will no longer write data from the corresponding in-application stream to the external output destination.
    func deleteApplicationOutput(input: DeleteApplicationOutputInput) async throws -> DeleteApplicationOutputOutputResponse
    /// Deletes a reference data source configuration from the specified SQL-based Kinesis Data Analytics application's configuration. If the application is running, Kinesis Data Analytics immediately removes the in-application table that you created using the [AddApplicationReferenceDataSource] operation.
    func deleteApplicationReferenceDataSource(input: DeleteApplicationReferenceDataSourceInput) async throws -> DeleteApplicationReferenceDataSourceOutputResponse
    /// Deletes a snapshot of application state.
    func deleteApplicationSnapshot(input: DeleteApplicationSnapshotInput) async throws -> DeleteApplicationSnapshotOutputResponse
    /// Removes a VPC configuration from a Kinesis Data Analytics application.
    func deleteApplicationVpcConfiguration(input: DeleteApplicationVpcConfigurationInput) async throws -> DeleteApplicationVpcConfigurationOutputResponse
    /// Returns information about a specific Kinesis Data Analytics application. If you want to retrieve a list of all applications in your account, use the [ListApplications] operation.
    func describeApplication(input: DescribeApplicationInput) async throws -> DescribeApplicationOutputResponse
    /// Returns information about a snapshot of application state data.
    func describeApplicationSnapshot(input: DescribeApplicationSnapshotInput) async throws -> DescribeApplicationSnapshotOutputResponse
    /// Provides a detailed description of a specified version of the application. To see a list of all the versions of an application, invoke the [ListApplicationVersions] operation. This operation is supported only for Amazon Kinesis Data Analytics for Apache Flink.
    func describeApplicationVersion(input: DescribeApplicationVersionInput) async throws -> DescribeApplicationVersionOutputResponse
    /// Infers a schema for a SQL-based Kinesis Data Analytics application by evaluating sample records on the specified streaming source (Kinesis data stream or Kinesis Data Firehose delivery stream) or Amazon S3 object. In the response, the operation returns the inferred schema and also the sample records that the operation used to infer the schema. You can use the inferred schema when configuring a streaming source for your application. When you create an application using the Kinesis Data Analytics console, the console uses this operation to infer a schema and show it in the console user interface.
    func discoverInputSchema(input: DiscoverInputSchemaInput) async throws -> DiscoverInputSchemaOutputResponse
    /// Returns a list of Kinesis Data Analytics applications in your account. For each application, the response includes the application name, Amazon Resource Name (ARN), and status. If you want detailed information about a specific application, use [DescribeApplication].
    func listApplications(input: ListApplicationsInput) async throws -> ListApplicationsOutputResponse
    /// Lists information about the current application snapshots.
    func listApplicationSnapshots(input: ListApplicationSnapshotsInput) async throws -> ListApplicationSnapshotsOutputResponse
    /// Lists all the versions for the specified application, including versions that were rolled back. The response also includes a summary of the configuration associated with each version. To get the complete description of a specific application version, invoke the [DescribeApplicationVersion] operation. This operation is supported only for Amazon Kinesis Data Analytics for Apache Flink.
    func listApplicationVersions(input: ListApplicationVersionsInput) async throws -> ListApplicationVersionsOutputResponse
    /// Retrieves the list of key-value tags assigned to the application. For more information, see [Using Tagging](https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html).
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Reverts the application to the previous running version. You can roll back an application if you suspect it is stuck in a transient status. You can roll back an application only if it is in the UPDATING or AUTOSCALING status. When you rollback an application, it loads state data from the last successful snapshot. If the application has no snapshots, Kinesis Data Analytics rejects the rollback request. This action is not supported for Kinesis Data Analytics for SQL applications.
    func rollbackApplication(input: RollbackApplicationInput) async throws -> RollbackApplicationOutputResponse
    /// Starts the specified Kinesis Data Analytics application. After creating an application, you must exclusively call this operation to start your application.
    func startApplication(input: StartApplicationInput) async throws -> StartApplicationOutputResponse
    /// Stops the application from processing data. You can stop an application only if it is in the running status, unless you set the Force parameter to true. You can use the [DescribeApplication] operation to find the application status. Kinesis Data Analytics takes a snapshot when the application is stopped, unless Force is set to true.
    func stopApplication(input: StopApplicationInput) async throws -> StopApplicationOutputResponse
    /// Adds one or more key-value tags to a Kinesis Data Analytics application. Note that the maximum number of application tags includes system tags. The maximum number of user-defined application tags is 50. For more information, see [Using Tagging](https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html).
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes one or more tags from a Kinesis Data Analytics application. For more information, see [Using Tagging](https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html).
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates an existing Kinesis Data Analytics application. Using this operation, you can update application code, input configuration, and output configuration. Kinesis Data Analytics updates the ApplicationVersionId each time you update your application. You cannot update the RuntimeEnvironment of an existing application. If you need to update an application's RuntimeEnvironment, you must delete the application and create it again.
    func updateApplication(input: UpdateApplicationInput) async throws -> UpdateApplicationOutputResponse
    /// Updates the maintenance configuration of the Kinesis Data Analytics application. You can invoke this operation on an application that is in one of the two following states: READY or RUNNING. If you invoke it when the application is in a state other than these two states, it throws a ResourceInUseException. The service makes use of the updated configuration the next time it schedules maintenance for the application. If you invoke this operation after the service schedules maintenance, the service will apply the configuration update the next time it schedules maintenance for the application. This means that you might not see the maintenance configuration update applied to the maintenance process that follows a successful invocation of this operation, but to the following maintenance process instead. To see the current maintenance configuration of your application, invoke the [DescribeApplication] operation. For information about application maintenance, see [Kinesis Data Analytics for Apache Flink Maintenance](https://docs.aws.amazon.com/kinesisanalytics/latest/java/maintenance.html). This operation is supported only for Amazon Kinesis Data Analytics for Apache Flink.
    func updateApplicationMaintenanceConfiguration(input: UpdateApplicationMaintenanceConfigurationInput) async throws -> UpdateApplicationMaintenanceConfigurationOutputResponse
}

public enum KinesisAnalyticsV2ClientTypes {}