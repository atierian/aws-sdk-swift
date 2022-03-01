// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListAccountsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListAccountsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListAccountsOutputResponse`
extension ChimeClient {
    public func listAccountsPaginated(input: ListAccountsInput) -> ClientRuntime.PaginatorSequence<ListAccountsInput, ListAccountsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAccountsInput, ListAccountsOutputResponse>(input: input, inputKey: \ListAccountsInput.nextToken, outputKey: \ListAccountsOutputResponse.nextToken, paginationFunction: self.listAccounts(input:))
    }
}

extension ListAccountsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAccountsInput {
        return ListAccountsInput(
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token,
            userEmail: self.userEmail
        )}
}

/// Paginate over `[ListAppInstanceAdminsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListAppInstanceAdminsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListAppInstanceAdminsOutputResponse`
extension ChimeClient {
    public func listAppInstanceAdminsPaginated(input: ListAppInstanceAdminsInput) -> ClientRuntime.PaginatorSequence<ListAppInstanceAdminsInput, ListAppInstanceAdminsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAppInstanceAdminsInput, ListAppInstanceAdminsOutputResponse>(input: input, inputKey: \ListAppInstanceAdminsInput.nextToken, outputKey: \ListAppInstanceAdminsOutputResponse.nextToken, paginationFunction: self.listAppInstanceAdmins(input:))
    }
}

extension ListAppInstanceAdminsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAppInstanceAdminsInput {
        return ListAppInstanceAdminsInput(
            appInstanceArn: self.appInstanceArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListAppInstancesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListAppInstancesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListAppInstancesOutputResponse`
extension ChimeClient {
    public func listAppInstancesPaginated(input: ListAppInstancesInput) -> ClientRuntime.PaginatorSequence<ListAppInstancesInput, ListAppInstancesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAppInstancesInput, ListAppInstancesOutputResponse>(input: input, inputKey: \ListAppInstancesInput.nextToken, outputKey: \ListAppInstancesOutputResponse.nextToken, paginationFunction: self.listAppInstances(input:))
    }
}

extension ListAppInstancesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAppInstancesInput {
        return ListAppInstancesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListAppInstanceUsersOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListAppInstanceUsersInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListAppInstanceUsersOutputResponse`
extension ChimeClient {
    public func listAppInstanceUsersPaginated(input: ListAppInstanceUsersInput) -> ClientRuntime.PaginatorSequence<ListAppInstanceUsersInput, ListAppInstanceUsersOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAppInstanceUsersInput, ListAppInstanceUsersOutputResponse>(input: input, inputKey: \ListAppInstanceUsersInput.nextToken, outputKey: \ListAppInstanceUsersOutputResponse.nextToken, paginationFunction: self.listAppInstanceUsers(input:))
    }
}

extension ListAppInstanceUsersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAppInstanceUsersInput {
        return ListAppInstanceUsersInput(
            appInstanceArn: self.appInstanceArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListAttendeesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListAttendeesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListAttendeesOutputResponse`
extension ChimeClient {
    public func listAttendeesPaginated(input: ListAttendeesInput) -> ClientRuntime.PaginatorSequence<ListAttendeesInput, ListAttendeesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAttendeesInput, ListAttendeesOutputResponse>(input: input, inputKey: \ListAttendeesInput.nextToken, outputKey: \ListAttendeesOutputResponse.nextToken, paginationFunction: self.listAttendees(input:))
    }
}

extension ListAttendeesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAttendeesInput {
        return ListAttendeesInput(
            maxResults: self.maxResults,
            meetingId: self.meetingId,
            nextToken: token
        )}
}

/// Paginate over `[ListBotsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListBotsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListBotsOutputResponse`
extension ChimeClient {
    public func listBotsPaginated(input: ListBotsInput) -> ClientRuntime.PaginatorSequence<ListBotsInput, ListBotsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListBotsInput, ListBotsOutputResponse>(input: input, inputKey: \ListBotsInput.nextToken, outputKey: \ListBotsOutputResponse.nextToken, paginationFunction: self.listBots(input:))
    }
}

extension ListBotsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListBotsInput {
        return ListBotsInput(
            accountId: self.accountId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListChannelBansOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListChannelBansInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListChannelBansOutputResponse`
extension ChimeClient {
    public func listChannelBansPaginated(input: ListChannelBansInput) -> ClientRuntime.PaginatorSequence<ListChannelBansInput, ListChannelBansOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListChannelBansInput, ListChannelBansOutputResponse>(input: input, inputKey: \ListChannelBansInput.nextToken, outputKey: \ListChannelBansOutputResponse.nextToken, paginationFunction: self.listChannelBans(input:))
    }
}

extension ListChannelBansInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListChannelBansInput {
        return ListChannelBansInput(
            channelArn: self.channelArn,
            chimeBearer: self.chimeBearer,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListChannelMembershipsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListChannelMembershipsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListChannelMembershipsOutputResponse`
extension ChimeClient {
    public func listChannelMembershipsPaginated(input: ListChannelMembershipsInput) -> ClientRuntime.PaginatorSequence<ListChannelMembershipsInput, ListChannelMembershipsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListChannelMembershipsInput, ListChannelMembershipsOutputResponse>(input: input, inputKey: \ListChannelMembershipsInput.nextToken, outputKey: \ListChannelMembershipsOutputResponse.nextToken, paginationFunction: self.listChannelMemberships(input:))
    }
}

extension ListChannelMembershipsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListChannelMembershipsInput {
        return ListChannelMembershipsInput(
            channelArn: self.channelArn,
            chimeBearer: self.chimeBearer,
            maxResults: self.maxResults,
            nextToken: token,
            type: self.type
        )}
}

/// Paginate over `[ListChannelMembershipsForAppInstanceUserOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListChannelMembershipsForAppInstanceUserInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListChannelMembershipsForAppInstanceUserOutputResponse`
extension ChimeClient {
    public func listChannelMembershipsForAppInstanceUserPaginated(input: ListChannelMembershipsForAppInstanceUserInput) -> ClientRuntime.PaginatorSequence<ListChannelMembershipsForAppInstanceUserInput, ListChannelMembershipsForAppInstanceUserOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListChannelMembershipsForAppInstanceUserInput, ListChannelMembershipsForAppInstanceUserOutputResponse>(input: input, inputKey: \ListChannelMembershipsForAppInstanceUserInput.nextToken, outputKey: \ListChannelMembershipsForAppInstanceUserOutputResponse.nextToken, paginationFunction: self.listChannelMembershipsForAppInstanceUser(input:))
    }
}

extension ListChannelMembershipsForAppInstanceUserInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListChannelMembershipsForAppInstanceUserInput {
        return ListChannelMembershipsForAppInstanceUserInput(
            appInstanceUserArn: self.appInstanceUserArn,
            chimeBearer: self.chimeBearer,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListChannelMessagesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListChannelMessagesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListChannelMessagesOutputResponse`
extension ChimeClient {
    public func listChannelMessagesPaginated(input: ListChannelMessagesInput) -> ClientRuntime.PaginatorSequence<ListChannelMessagesInput, ListChannelMessagesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListChannelMessagesInput, ListChannelMessagesOutputResponse>(input: input, inputKey: \ListChannelMessagesInput.nextToken, outputKey: \ListChannelMessagesOutputResponse.nextToken, paginationFunction: self.listChannelMessages(input:))
    }
}

extension ListChannelMessagesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListChannelMessagesInput {
        return ListChannelMessagesInput(
            channelArn: self.channelArn,
            chimeBearer: self.chimeBearer,
            maxResults: self.maxResults,
            nextToken: token,
            notAfter: self.notAfter,
            notBefore: self.notBefore,
            sortOrder: self.sortOrder
        )}
}

/// Paginate over `[ListChannelModeratorsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListChannelModeratorsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListChannelModeratorsOutputResponse`
extension ChimeClient {
    public func listChannelModeratorsPaginated(input: ListChannelModeratorsInput) -> ClientRuntime.PaginatorSequence<ListChannelModeratorsInput, ListChannelModeratorsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListChannelModeratorsInput, ListChannelModeratorsOutputResponse>(input: input, inputKey: \ListChannelModeratorsInput.nextToken, outputKey: \ListChannelModeratorsOutputResponse.nextToken, paginationFunction: self.listChannelModerators(input:))
    }
}

extension ListChannelModeratorsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListChannelModeratorsInput {
        return ListChannelModeratorsInput(
            channelArn: self.channelArn,
            chimeBearer: self.chimeBearer,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListChannelsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListChannelsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListChannelsOutputResponse`
extension ChimeClient {
    public func listChannelsPaginated(input: ListChannelsInput) -> ClientRuntime.PaginatorSequence<ListChannelsInput, ListChannelsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListChannelsInput, ListChannelsOutputResponse>(input: input, inputKey: \ListChannelsInput.nextToken, outputKey: \ListChannelsOutputResponse.nextToken, paginationFunction: self.listChannels(input:))
    }
}

extension ListChannelsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListChannelsInput {
        return ListChannelsInput(
            appInstanceArn: self.appInstanceArn,
            chimeBearer: self.chimeBearer,
            maxResults: self.maxResults,
            nextToken: token,
            privacy: self.privacy
        )}
}

/// Paginate over `[ListChannelsModeratedByAppInstanceUserOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListChannelsModeratedByAppInstanceUserInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListChannelsModeratedByAppInstanceUserOutputResponse`
extension ChimeClient {
    public func listChannelsModeratedByAppInstanceUserPaginated(input: ListChannelsModeratedByAppInstanceUserInput) -> ClientRuntime.PaginatorSequence<ListChannelsModeratedByAppInstanceUserInput, ListChannelsModeratedByAppInstanceUserOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListChannelsModeratedByAppInstanceUserInput, ListChannelsModeratedByAppInstanceUserOutputResponse>(input: input, inputKey: \ListChannelsModeratedByAppInstanceUserInput.nextToken, outputKey: \ListChannelsModeratedByAppInstanceUserOutputResponse.nextToken, paginationFunction: self.listChannelsModeratedByAppInstanceUser(input:))
    }
}

extension ListChannelsModeratedByAppInstanceUserInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListChannelsModeratedByAppInstanceUserInput {
        return ListChannelsModeratedByAppInstanceUserInput(
            appInstanceUserArn: self.appInstanceUserArn,
            chimeBearer: self.chimeBearer,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListMediaCapturePipelinesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListMediaCapturePipelinesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListMediaCapturePipelinesOutputResponse`
extension ChimeClient {
    public func listMediaCapturePipelinesPaginated(input: ListMediaCapturePipelinesInput) -> ClientRuntime.PaginatorSequence<ListMediaCapturePipelinesInput, ListMediaCapturePipelinesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListMediaCapturePipelinesInput, ListMediaCapturePipelinesOutputResponse>(input: input, inputKey: \ListMediaCapturePipelinesInput.nextToken, outputKey: \ListMediaCapturePipelinesOutputResponse.nextToken, paginationFunction: self.listMediaCapturePipelines(input:))
    }
}

extension ListMediaCapturePipelinesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListMediaCapturePipelinesInput {
        return ListMediaCapturePipelinesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListMeetingsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListMeetingsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListMeetingsOutputResponse`
extension ChimeClient {
    public func listMeetingsPaginated(input: ListMeetingsInput) -> ClientRuntime.PaginatorSequence<ListMeetingsInput, ListMeetingsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListMeetingsInput, ListMeetingsOutputResponse>(input: input, inputKey: \ListMeetingsInput.nextToken, outputKey: \ListMeetingsOutputResponse.nextToken, paginationFunction: self.listMeetings(input:))
    }
}

extension ListMeetingsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListMeetingsInput {
        return ListMeetingsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListPhoneNumberOrdersOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListPhoneNumberOrdersInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListPhoneNumberOrdersOutputResponse`
extension ChimeClient {
    public func listPhoneNumberOrdersPaginated(input: ListPhoneNumberOrdersInput) -> ClientRuntime.PaginatorSequence<ListPhoneNumberOrdersInput, ListPhoneNumberOrdersOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListPhoneNumberOrdersInput, ListPhoneNumberOrdersOutputResponse>(input: input, inputKey: \ListPhoneNumberOrdersInput.nextToken, outputKey: \ListPhoneNumberOrdersOutputResponse.nextToken, paginationFunction: self.listPhoneNumberOrders(input:))
    }
}

extension ListPhoneNumberOrdersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPhoneNumberOrdersInput {
        return ListPhoneNumberOrdersInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListPhoneNumbersOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListPhoneNumbersInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListPhoneNumbersOutputResponse`
extension ChimeClient {
    public func listPhoneNumbersPaginated(input: ListPhoneNumbersInput) -> ClientRuntime.PaginatorSequence<ListPhoneNumbersInput, ListPhoneNumbersOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListPhoneNumbersInput, ListPhoneNumbersOutputResponse>(input: input, inputKey: \ListPhoneNumbersInput.nextToken, outputKey: \ListPhoneNumbersOutputResponse.nextToken, paginationFunction: self.listPhoneNumbers(input:))
    }
}

extension ListPhoneNumbersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPhoneNumbersInput {
        return ListPhoneNumbersInput(
            filterName: self.filterName,
            filterValue: self.filterValue,
            maxResults: self.maxResults,
            nextToken: token,
            productType: self.productType,
            status: self.status
        )}
}

/// Paginate over `[ListProxySessionsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListProxySessionsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListProxySessionsOutputResponse`
extension ChimeClient {
    public func listProxySessionsPaginated(input: ListProxySessionsInput) -> ClientRuntime.PaginatorSequence<ListProxySessionsInput, ListProxySessionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListProxySessionsInput, ListProxySessionsOutputResponse>(input: input, inputKey: \ListProxySessionsInput.nextToken, outputKey: \ListProxySessionsOutputResponse.nextToken, paginationFunction: self.listProxySessions(input:))
    }
}

extension ListProxySessionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListProxySessionsInput {
        return ListProxySessionsInput(
            maxResults: self.maxResults,
            nextToken: token,
            status: self.status,
            voiceConnectorId: self.voiceConnectorId
        )}
}

/// Paginate over `[ListRoomMembershipsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListRoomMembershipsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListRoomMembershipsOutputResponse`
extension ChimeClient {
    public func listRoomMembershipsPaginated(input: ListRoomMembershipsInput) -> ClientRuntime.PaginatorSequence<ListRoomMembershipsInput, ListRoomMembershipsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListRoomMembershipsInput, ListRoomMembershipsOutputResponse>(input: input, inputKey: \ListRoomMembershipsInput.nextToken, outputKey: \ListRoomMembershipsOutputResponse.nextToken, paginationFunction: self.listRoomMemberships(input:))
    }
}

extension ListRoomMembershipsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRoomMembershipsInput {
        return ListRoomMembershipsInput(
            accountId: self.accountId,
            maxResults: self.maxResults,
            nextToken: token,
            roomId: self.roomId
        )}
}

/// Paginate over `[ListRoomsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListRoomsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListRoomsOutputResponse`
extension ChimeClient {
    public func listRoomsPaginated(input: ListRoomsInput) -> ClientRuntime.PaginatorSequence<ListRoomsInput, ListRoomsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListRoomsInput, ListRoomsOutputResponse>(input: input, inputKey: \ListRoomsInput.nextToken, outputKey: \ListRoomsOutputResponse.nextToken, paginationFunction: self.listRooms(input:))
    }
}

extension ListRoomsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRoomsInput {
        return ListRoomsInput(
            accountId: self.accountId,
            maxResults: self.maxResults,
            memberId: self.memberId,
            nextToken: token
        )}
}

/// Paginate over `[ListSipMediaApplicationsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListSipMediaApplicationsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListSipMediaApplicationsOutputResponse`
extension ChimeClient {
    public func listSipMediaApplicationsPaginated(input: ListSipMediaApplicationsInput) -> ClientRuntime.PaginatorSequence<ListSipMediaApplicationsInput, ListSipMediaApplicationsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListSipMediaApplicationsInput, ListSipMediaApplicationsOutputResponse>(input: input, inputKey: \ListSipMediaApplicationsInput.nextToken, outputKey: \ListSipMediaApplicationsOutputResponse.nextToken, paginationFunction: self.listSipMediaApplications(input:))
    }
}

extension ListSipMediaApplicationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSipMediaApplicationsInput {
        return ListSipMediaApplicationsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListSipRulesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListSipRulesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListSipRulesOutputResponse`
extension ChimeClient {
    public func listSipRulesPaginated(input: ListSipRulesInput) -> ClientRuntime.PaginatorSequence<ListSipRulesInput, ListSipRulesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListSipRulesInput, ListSipRulesOutputResponse>(input: input, inputKey: \ListSipRulesInput.nextToken, outputKey: \ListSipRulesOutputResponse.nextToken, paginationFunction: self.listSipRules(input:))
    }
}

extension ListSipRulesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSipRulesInput {
        return ListSipRulesInput(
            maxResults: self.maxResults,
            nextToken: token,
            sipMediaApplicationId: self.sipMediaApplicationId
        )}
}

/// Paginate over `[ListUsersOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListUsersInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListUsersOutputResponse`
extension ChimeClient {
    public func listUsersPaginated(input: ListUsersInput) -> ClientRuntime.PaginatorSequence<ListUsersInput, ListUsersOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListUsersInput, ListUsersOutputResponse>(input: input, inputKey: \ListUsersInput.nextToken, outputKey: \ListUsersOutputResponse.nextToken, paginationFunction: self.listUsers(input:))
    }
}

extension ListUsersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListUsersInput {
        return ListUsersInput(
            accountId: self.accountId,
            maxResults: self.maxResults,
            nextToken: token,
            userEmail: self.userEmail,
            userType: self.userType
        )}
}

/// Paginate over `[ListVoiceConnectorGroupsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListVoiceConnectorGroupsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListVoiceConnectorGroupsOutputResponse`
extension ChimeClient {
    public func listVoiceConnectorGroupsPaginated(input: ListVoiceConnectorGroupsInput) -> ClientRuntime.PaginatorSequence<ListVoiceConnectorGroupsInput, ListVoiceConnectorGroupsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListVoiceConnectorGroupsInput, ListVoiceConnectorGroupsOutputResponse>(input: input, inputKey: \ListVoiceConnectorGroupsInput.nextToken, outputKey: \ListVoiceConnectorGroupsOutputResponse.nextToken, paginationFunction: self.listVoiceConnectorGroups(input:))
    }
}

extension ListVoiceConnectorGroupsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListVoiceConnectorGroupsInput {
        return ListVoiceConnectorGroupsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListVoiceConnectorsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListVoiceConnectorsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListVoiceConnectorsOutputResponse`
extension ChimeClient {
    public func listVoiceConnectorsPaginated(input: ListVoiceConnectorsInput) -> ClientRuntime.PaginatorSequence<ListVoiceConnectorsInput, ListVoiceConnectorsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListVoiceConnectorsInput, ListVoiceConnectorsOutputResponse>(input: input, inputKey: \ListVoiceConnectorsInput.nextToken, outputKey: \ListVoiceConnectorsOutputResponse.nextToken, paginationFunction: self.listVoiceConnectors(input:))
    }
}

extension ListVoiceConnectorsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListVoiceConnectorsInput {
        return ListVoiceConnectorsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[SearchAvailablePhoneNumbersOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[SearchAvailablePhoneNumbersInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `SearchAvailablePhoneNumbersOutputResponse`
extension ChimeClient {
    public func searchAvailablePhoneNumbersPaginated(input: SearchAvailablePhoneNumbersInput) -> ClientRuntime.PaginatorSequence<SearchAvailablePhoneNumbersInput, SearchAvailablePhoneNumbersOutputResponse> {
        return ClientRuntime.PaginatorSequence<SearchAvailablePhoneNumbersInput, SearchAvailablePhoneNumbersOutputResponse>(input: input, inputKey: \SearchAvailablePhoneNumbersInput.nextToken, outputKey: \SearchAvailablePhoneNumbersOutputResponse.nextToken, paginationFunction: self.searchAvailablePhoneNumbers(input:))
    }
}

extension SearchAvailablePhoneNumbersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> SearchAvailablePhoneNumbersInput {
        return SearchAvailablePhoneNumbersInput(
            areaCode: self.areaCode,
            city: self.city,
            country: self.country,
            maxResults: self.maxResults,
            nextToken: token,
            phoneNumberType: self.phoneNumberType,
            state: self.state,
            tollFreePrefix: self.tollFreePrefix
        )}
}