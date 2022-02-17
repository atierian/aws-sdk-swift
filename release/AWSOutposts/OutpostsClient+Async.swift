// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension OutpostsClient {
    /// Cancels an order for an Outpost.
    func cancelOrder(input: CancelOrderInput) async throws -> CancelOrderOutputResponse
    {
        typealias cancelOrderContinuation = CheckedContinuation<CancelOrderOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: cancelOrderContinuation) in
            cancelOrder(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates an order for an Outpost.
    func createOrder(input: CreateOrderInput) async throws -> CreateOrderOutputResponse
    {
        typealias createOrderContinuation = CheckedContinuation<CreateOrderOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createOrderContinuation) in
            createOrder(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates an Outpost. You can specify AvailabilityZone or AvailabilityZoneId.
    func createOutpost(input: CreateOutpostInput) async throws -> CreateOutpostOutputResponse
    {
        typealias createOutpostContinuation = CheckedContinuation<CreateOutpostOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createOutpostContinuation) in
            createOutpost(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a site for an Outpost.
    func createSite(input: CreateSiteInput) async throws -> CreateSiteOutputResponse
    {
        typealias createSiteContinuation = CheckedContinuation<CreateSiteOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createSiteContinuation) in
            createSite(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the Outpost.
    func deleteOutpost(input: DeleteOutpostInput) async throws -> DeleteOutpostOutputResponse
    {
        typealias deleteOutpostContinuation = CheckedContinuation<DeleteOutpostOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteOutpostContinuation) in
            deleteOutpost(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the site.
    func deleteSite(input: DeleteSiteInput) async throws -> DeleteSiteOutputResponse
    {
        typealias deleteSiteContinuation = CheckedContinuation<DeleteSiteOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteSiteContinuation) in
            deleteSite(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets information about a catalog item.
    func getCatalogItem(input: GetCatalogItemInput) async throws -> GetCatalogItemOutputResponse
    {
        typealias getCatalogItemContinuation = CheckedContinuation<GetCatalogItemOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getCatalogItemContinuation) in
            getCatalogItem(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets an order.
    func getOrder(input: GetOrderInput) async throws -> GetOrderOutputResponse
    {
        typealias getOrderContinuation = CheckedContinuation<GetOrderOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getOrderContinuation) in
            getOrder(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets information about the specified Outpost.
    func getOutpost(input: GetOutpostInput) async throws -> GetOutpostOutputResponse
    {
        typealias getOutpostContinuation = CheckedContinuation<GetOutpostOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getOutpostContinuation) in
            getOutpost(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the instance types for the specified Outpost.
    func getOutpostInstanceTypes(input: GetOutpostInstanceTypesInput) async throws -> GetOutpostInstanceTypesOutputResponse
    {
        typealias getOutpostInstanceTypesContinuation = CheckedContinuation<GetOutpostInstanceTypesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getOutpostInstanceTypesContinuation) in
            getOutpostInstanceTypes(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets information about the specified Outpost site.
    func getSite(input: GetSiteInput) async throws -> GetSiteOutputResponse
    {
        typealias getSiteContinuation = CheckedContinuation<GetSiteOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getSiteContinuation) in
            getSite(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets the site address.
    func getSiteAddress(input: GetSiteAddressInput) async throws -> GetSiteAddressOutputResponse
    {
        typealias getSiteAddressContinuation = CheckedContinuation<GetSiteAddressOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getSiteAddressContinuation) in
            getSiteAddress(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Use to create a list of every item in the catalog. Add filters to your request to return a more specific list of results. Use filters to match an item class, storage option, or EC2 family. If you specify multiple filters, the filters are joined with an AND, and the request returns only results that match all of the specified filters.
    func listCatalogItems(input: ListCatalogItemsInput) async throws -> ListCatalogItemsOutputResponse
    {
        typealias listCatalogItemsContinuation = CheckedContinuation<ListCatalogItemsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listCatalogItemsContinuation) in
            listCatalogItems(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Create a list of the Outpost orders for your Amazon Web Services account. You can filter your request by Outpost to return a more specific list of results.
    func listOrders(input: ListOrdersInput) async throws -> ListOrdersOutputResponse
    {
        typealias listOrdersContinuation = CheckedContinuation<ListOrdersOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listOrdersContinuation) in
            listOrders(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Create a list of the Outposts for your Amazon Web Services account. Add filters to your request to return a more specific list of results. Use filters to match an Outpost lifecycle status, Availability Zone (us-east-1a), and AZ ID (use1-az1). If you specify multiple filters, the filters are joined with an AND, and the request returns only results that match all of the specified filters.
    func listOutposts(input: ListOutpostsInput) async throws -> ListOutpostsOutputResponse
    {
        typealias listOutpostsContinuation = CheckedContinuation<ListOutpostsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listOutpostsContinuation) in
            listOutposts(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the sites for your Amazon Web Services account.
    func listSites(input: ListSitesInput) async throws -> ListSitesOutputResponse
    {
        typealias listSitesContinuation = CheckedContinuation<ListSitesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listSitesContinuation) in
            listSites(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the tags for the specified resource.
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

    /// Adds tags to the specified resource.
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

    /// Removes tags from the specified resource.
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

    /// Updates an Outpost.
    func updateOutpost(input: UpdateOutpostInput) async throws -> UpdateOutpostOutputResponse
    {
        typealias updateOutpostContinuation = CheckedContinuation<UpdateOutpostOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateOutpostContinuation) in
            updateOutpost(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates the site.
    func updateSite(input: UpdateSiteInput) async throws -> UpdateSiteOutputResponse
    {
        typealias updateSiteContinuation = CheckedContinuation<UpdateSiteOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateSiteContinuation) in
            updateSite(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates the site address. To update a site address with an order IN_PROGRESS, you must wait for the order to complete or cancel the order. You can update the operating address before you place an order at the site, or after all Outposts that belong to the site have been deactivated.
    func updateSiteAddress(input: UpdateSiteAddressInput) async throws -> UpdateSiteAddressOutputResponse
    {
        typealias updateSiteAddressContinuation = CheckedContinuation<UpdateSiteAddressOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateSiteAddressContinuation) in
            updateSiteAddress(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Update the physical and logistical details for a rack at a site. For more information about hardware requirements for racks, see [Network readiness checklist](https://docs.aws.amazon.com/outposts/latest/userguide/outposts-requirements.html#checklist) in the Amazon Web Services Outposts User Guide. To update a rack at a site with an order of IN_PROGRESS, you must wait for the order to complete or cancel the order.
    func updateSiteRackPhysicalProperties(input: UpdateSiteRackPhysicalPropertiesInput) async throws -> UpdateSiteRackPhysicalPropertiesOutputResponse
    {
        typealias updateSiteRackPhysicalPropertiesContinuation = CheckedContinuation<UpdateSiteRackPhysicalPropertiesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateSiteRackPhysicalPropertiesContinuation) in
            updateSiteRackPhysicalProperties(input: input) { result in
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