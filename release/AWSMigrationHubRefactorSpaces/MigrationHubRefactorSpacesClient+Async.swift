// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension MigrationHubRefactorSpacesClient {
    /// Creates an Amazon Web Services Migration Hub Refactor Spaces application. The account that owns the environment also owns the applications created inside the environment, regardless of the account that creates the application. Refactor Spaces provisions the Amazon API Gateway and Network Load Balancer for the application proxy inside your account.
    func createApplication(input: CreateApplicationInput) async throws -> CreateApplicationOutputResponse
    {
        typealias createApplicationContinuation = CheckedContinuation<CreateApplicationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createApplicationContinuation) in
            createApplication(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates an Amazon Web Services Migration Hub Refactor Spaces environment. The caller owns the environment resource, and they are referred to as the environment owner. The environment owner has cross-account visibility and control of Refactor Spaces resources that are added to the environment by other accounts that the environment is shared with. When creating an environment, Refactor Spaces provisions a transit gateway in your account.
    func createEnvironment(input: CreateEnvironmentInput) async throws -> CreateEnvironmentOutputResponse
    {
        typealias createEnvironmentContinuation = CheckedContinuation<CreateEnvironmentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createEnvironmentContinuation) in
            createEnvironment(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates an Amazon Web Services Migration Hub Refactor Spaces route. The account owner of the service resource is always the environment owner, regardless of which account creates the route. Routes target a service in the application. If an application does not have any routes, then the first route must be created as a DEFAULTRouteType. When you create a route, Refactor Spaces configures the Amazon API Gateway to send traffic to the target service as follows:
    ///
    /// * If the service has a URL endpoint, and the endpoint resolves to a private IP address, Refactor Spaces routes traffic using the API Gateway VPC link.
    ///
    /// * If the service has a URL endpoint, and the endpoint resolves to a public IP address, Refactor Spaces routes traffic over the public internet.
    ///
    /// * If the service has an Lambda function endpoint, then Refactor Spaces uses the API Gateway Lambda integration.
    ///
    ///
    /// A health check is performed on the service when the route is created. If the health check fails, the route transitions to FAILED, and no traffic is sent to the service. For Lambda functions, the Lambda function state is checked. If the function is not active, the function configuration is updated so that Lambda resources are provisioned. If the Lambda state is Failed, then the route creation fails. For more information, see the [GetFunctionConfiguration's State response parameter](https://docs.aws.amazon.com/lambda/latest/dg/API_GetFunctionConfiguration.html#SSS-GetFunctionConfiguration-response-State) in the Lambda Developer Guide. For public URLs, a connection is opened to the public endpoint. If the URL is not reachable, the health check fails. For private URLs, a target group is created and the target group health check is run. The HealthCheckProtocol, HealthCheckPort, and HealthCheckPath are the same protocol, port, and path specified in the URL or health URL, if used. All other settings use the default values, as described in [Health checks for your target groups](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/target-group-health-checks.html). The health check is considered successful if at least one target within the target group transitions to a healthy state.
    func createRoute(input: CreateRouteInput) async throws -> CreateRouteOutputResponse
    {
        typealias createRouteContinuation = CheckedContinuation<CreateRouteOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createRouteContinuation) in
            createRoute(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates an Amazon Web Services Migration Hub Refactor Spaces service. The account owner of the service is always the environment owner, regardless of which account in the environment creates the service. Services have either a URL endpoint in a virtual private cloud (VPC), or a Lambda function endpoint. If an Amazon Web Services resourceis launched in a service VPC, and you want it to be accessible to all of an environment’s services with VPCs and routes, apply the RefactorSpacesSecurityGroup to the resource. Alternatively, to add more cross-account constraints, apply your own security group.
    func createService(input: CreateServiceInput) async throws -> CreateServiceOutputResponse
    {
        typealias createServiceContinuation = CheckedContinuation<CreateServiceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createServiceContinuation) in
            createService(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes an Amazon Web Services Migration Hub Refactor Spaces application. Before you can delete an application, you must first delete any services or routes within the application.
    func deleteApplication(input: DeleteApplicationInput) async throws -> DeleteApplicationOutputResponse
    {
        typealias deleteApplicationContinuation = CheckedContinuation<DeleteApplicationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteApplicationContinuation) in
            deleteApplication(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes an Amazon Web Services Migration Hub Refactor Spaces environment. Before you can delete an environment, you must first delete any applications and services within the environment.
    func deleteEnvironment(input: DeleteEnvironmentInput) async throws -> DeleteEnvironmentOutputResponse
    {
        typealias deleteEnvironmentContinuation = CheckedContinuation<DeleteEnvironmentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteEnvironmentContinuation) in
            deleteEnvironment(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the resource policy set for the environment.
    func deleteResourcePolicy(input: DeleteResourcePolicyInput) async throws -> DeleteResourcePolicyOutputResponse
    {
        typealias deleteResourcePolicyContinuation = CheckedContinuation<DeleteResourcePolicyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteResourcePolicyContinuation) in
            deleteResourcePolicy(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes an Amazon Web Services Migration Hub Refactor Spaces route.
    func deleteRoute(input: DeleteRouteInput) async throws -> DeleteRouteOutputResponse
    {
        typealias deleteRouteContinuation = CheckedContinuation<DeleteRouteOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteRouteContinuation) in
            deleteRoute(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes an Amazon Web Services Migration Hub Refactor Spaces service.
    func deleteService(input: DeleteServiceInput) async throws -> DeleteServiceOutputResponse
    {
        typealias deleteServiceContinuation = CheckedContinuation<DeleteServiceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteServiceContinuation) in
            deleteService(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets an Amazon Web Services Migration Hub Refactor Spaces application.
    func getApplication(input: GetApplicationInput) async throws -> GetApplicationOutputResponse
    {
        typealias getApplicationContinuation = CheckedContinuation<GetApplicationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getApplicationContinuation) in
            getApplication(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets an Amazon Web Services Migration Hub Refactor Spaces environment.
    func getEnvironment(input: GetEnvironmentInput) async throws -> GetEnvironmentOutputResponse
    {
        typealias getEnvironmentContinuation = CheckedContinuation<GetEnvironmentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getEnvironmentContinuation) in
            getEnvironment(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets the resource-based permission policy that is set for the given environment.
    func getResourcePolicy(input: GetResourcePolicyInput) async throws -> GetResourcePolicyOutputResponse
    {
        typealias getResourcePolicyContinuation = CheckedContinuation<GetResourcePolicyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getResourcePolicyContinuation) in
            getResourcePolicy(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets an Amazon Web Services Migration Hub Refactor Spaces route.
    func getRoute(input: GetRouteInput) async throws -> GetRouteOutputResponse
    {
        typealias getRouteContinuation = CheckedContinuation<GetRouteOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getRouteContinuation) in
            getRoute(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets an Amazon Web Services Migration Hub Refactor Spaces service.
    func getService(input: GetServiceInput) async throws -> GetServiceOutputResponse
    {
        typealias getServiceContinuation = CheckedContinuation<GetServiceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getServiceContinuation) in
            getService(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists all the Amazon Web Services Migration Hub Refactor Spaces applications within an environment.
    func listApplications(input: ListApplicationsInput) async throws -> ListApplicationsOutputResponse
    {
        typealias listApplicationsContinuation = CheckedContinuation<ListApplicationsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listApplicationsContinuation) in
            listApplications(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists all the virtual private clouds (VPCs) that are part of an Amazon Web Services Migration Hub Refactor Spaces environment.
    func listEnvironmentVpcs(input: ListEnvironmentVpcsInput) async throws -> ListEnvironmentVpcsOutputResponse
    {
        typealias listEnvironmentVpcsContinuation = CheckedContinuation<ListEnvironmentVpcsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listEnvironmentVpcsContinuation) in
            listEnvironmentVpcs(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists Amazon Web Services Migration Hub Refactor Spaces environments owned by a caller account or shared with the caller account.
    func listEnvironments(input: ListEnvironmentsInput) async throws -> ListEnvironmentsOutputResponse
    {
        typealias listEnvironmentsContinuation = CheckedContinuation<ListEnvironmentsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listEnvironmentsContinuation) in
            listEnvironments(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists all the Amazon Web Services Migration Hub Refactor Spaces routes within an application.
    func listRoutes(input: ListRoutesInput) async throws -> ListRoutesOutputResponse
    {
        typealias listRoutesContinuation = CheckedContinuation<ListRoutesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listRoutesContinuation) in
            listRoutes(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists all the Amazon Web Services Migration Hub Refactor Spaces services within an application.
    func listServices(input: ListServicesInput) async throws -> ListServicesOutputResponse
    {
        typealias listServicesContinuation = CheckedContinuation<ListServicesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listServicesContinuation) in
            listServices(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the tags of a resource. The caller account must be the same as the resource’s OwnerAccountId. Listing tags in other accounts is not supported.
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

    /// Attaches a resource-based permission policy to the Amazon Web Services Migration Hub Refactor Spaces environment. The policy must contain the same actions and condition statements as the arn:aws:ram::aws:permission/AWSRAMDefaultPermissionRefactorSpacesEnvironment permission in Resource Access Manager. The policy must not contain new lines or blank lines.
    func putResourcePolicy(input: PutResourcePolicyInput) async throws -> PutResourcePolicyOutputResponse
    {
        typealias putResourcePolicyContinuation = CheckedContinuation<PutResourcePolicyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: putResourcePolicyContinuation) in
            putResourcePolicy(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Removes the tags of a given resource. Tags are metadata which can be used to manage a resource. To tag a resource, the caller account must be the same as the resource’s OwnerAccountId. Tagging resources in other accounts is not supported. Amazon Web Services Migration Hub Refactor Spaces does not propagate tags to orchestrated resources, such as an environment’s transit gateway.
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

    /// Adds to or modifies the tags of the given resource. Tags are metadata which can be used to manage a resource. To untag a resource, the caller account must be the same as the resource’s OwnerAccountId. Untagging resources across accounts is not supported.
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

}
#endif