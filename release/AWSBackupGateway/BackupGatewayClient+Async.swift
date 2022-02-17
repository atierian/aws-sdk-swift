// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension BackupGatewayClient {
    /// Associates a backup gateway with your server. After you complete the association process, you can back up and restore your VMs through the gateway.
    func associateGatewayToServer(input: AssociateGatewayToServerInput) async throws -> AssociateGatewayToServerOutputResponse
    {
        typealias associateGatewayToServerContinuation = CheckedContinuation<AssociateGatewayToServerOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: associateGatewayToServerContinuation) in
            associateGatewayToServer(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a backup gateway. After you create a gateway, you can associate it with a server using the AssociateGatewayToServer operation.
    func createGateway(input: CreateGatewayInput) async throws -> CreateGatewayOutputResponse
    {
        typealias createGatewayContinuation = CheckedContinuation<CreateGatewayOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createGatewayContinuation) in
            createGateway(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes a backup gateway.
    func deleteGateway(input: DeleteGatewayInput) async throws -> DeleteGatewayOutputResponse
    {
        typealias deleteGatewayContinuation = CheckedContinuation<DeleteGatewayOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteGatewayContinuation) in
            deleteGateway(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes a hypervisor.
    func deleteHypervisor(input: DeleteHypervisorInput) async throws -> DeleteHypervisorOutputResponse
    {
        typealias deleteHypervisorContinuation = CheckedContinuation<DeleteHypervisorOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteHypervisorContinuation) in
            deleteHypervisor(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Disassociates a backup gateway from the specified server. After the disassociation process finishes, the gateway can no longer access the virtual machines on the server.
    func disassociateGatewayFromServer(input: DisassociateGatewayFromServerInput) async throws -> DisassociateGatewayFromServerOutputResponse
    {
        typealias disassociateGatewayFromServerContinuation = CheckedContinuation<DisassociateGatewayFromServerOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: disassociateGatewayFromServerContinuation) in
            disassociateGatewayFromServer(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Connect to a hypervisor by importing its configuration.
    func importHypervisorConfiguration(input: ImportHypervisorConfigurationInput) async throws -> ImportHypervisorConfigurationOutputResponse
    {
        typealias importHypervisorConfigurationContinuation = CheckedContinuation<ImportHypervisorConfigurationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: importHypervisorConfigurationContinuation) in
            importHypervisorConfiguration(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists backup gateways owned by an Amazon Web Services account in an Amazon Web Services Region. The returned list is ordered by gateway Amazon Resource Name (ARN).
    func listGateways(input: ListGatewaysInput) async throws -> ListGatewaysOutputResponse
    {
        typealias listGatewaysContinuation = CheckedContinuation<ListGatewaysOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listGatewaysContinuation) in
            listGateways(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists your hypervisors.
    func listHypervisors(input: ListHypervisorsInput) async throws -> ListHypervisorsOutputResponse
    {
        typealias listHypervisorsContinuation = CheckedContinuation<ListHypervisorsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listHypervisorsContinuation) in
            listHypervisors(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the tags applied to the resource identified by its Amazon Resource Name (ARN).
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

    /// Lists your virtual machines.
    func listVirtualMachines(input: ListVirtualMachinesInput) async throws -> ListVirtualMachinesOutputResponse
    {
        typealias listVirtualMachinesContinuation = CheckedContinuation<ListVirtualMachinesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listVirtualMachinesContinuation) in
            listVirtualMachines(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Set the maintenance start time for a gateway.
    func putMaintenanceStartTime(input: PutMaintenanceStartTimeInput) async throws -> PutMaintenanceStartTimeOutputResponse
    {
        typealias putMaintenanceStartTimeContinuation = CheckedContinuation<PutMaintenanceStartTimeOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: putMaintenanceStartTimeContinuation) in
            putMaintenanceStartTime(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Tag the resource.
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

    /// Tests your hypervisor configuration to validate that backup gateway can connect with the hypervisor and its resources.
    func testHypervisorConfiguration(input: TestHypervisorConfigurationInput) async throws -> TestHypervisorConfigurationOutputResponse
    {
        typealias testHypervisorConfigurationContinuation = CheckedContinuation<TestHypervisorConfigurationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: testHypervisorConfigurationContinuation) in
            testHypervisorConfiguration(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Removes tags from the resource.
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

    /// Updates a gateway's name. Specify which gateway to update using the Amazon Resource Name (ARN) of the gateway in your request.
    func updateGatewayInformation(input: UpdateGatewayInformationInput) async throws -> UpdateGatewayInformationOutputResponse
    {
        typealias updateGatewayInformationContinuation = CheckedContinuation<UpdateGatewayInformationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateGatewayInformationContinuation) in
            updateGatewayInformation(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates a hypervisor metadata, including its host, username, and password. Specify which hypervisor to update using the Amazon Resource Name (ARN) of the hypervisor in your request.
    func updateHypervisor(input: UpdateHypervisorInput) async throws -> UpdateHypervisorOutputResponse
    {
        typealias updateHypervisorContinuation = CheckedContinuation<UpdateHypervisorOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateHypervisorContinuation) in
            updateHypervisor(input: input) { result in
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