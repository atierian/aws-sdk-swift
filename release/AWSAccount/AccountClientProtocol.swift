// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Operations for Amazon Web Services Account Management
public protocol AccountClientProtocol {
    /// Deletes the specified alternate contact from an Amazon Web Services account. For complete details about how to use the alternate contact operations, see [Access or updating the alternate contacts](https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-update-contact.html).
    func deleteAlternateContact(input: DeleteAlternateContactInput, completion: @escaping (ClientRuntime.SdkResult<DeleteAlternateContactOutputResponse, DeleteAlternateContactOutputError>) -> Void)
    /// Retrieves the specified alternate contact attached to an Amazon Web Services account. For complete details about how to use the alternate contact operations, see [Access or updating the alternate contacts](https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-update-contact.html).
    func getAlternateContact(input: GetAlternateContactInput, completion: @escaping (ClientRuntime.SdkResult<GetAlternateContactOutputResponse, GetAlternateContactOutputError>) -> Void)
    /// Modifies the specified alternate contact attached to an Amazon Web Services account. For complete details about how to use the alternate contact operations, see [Access or updating the alternate contacts](https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-update-contact.html).
    func putAlternateContact(input: PutAlternateContactInput, completion: @escaping (ClientRuntime.SdkResult<PutAlternateContactOutputResponse, PutAlternateContactOutputError>) -> Void)
}

public enum AccountClientTypes {}