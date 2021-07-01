// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>AWS Transfer Family is a fully managed service that enables the transfer of files over the
///       File Transfer Protocol (FTP), File Transfer Protocol over SSL (FTPS), or Secure Shell (SSH)
///       File Transfer Protocol (SFTP) directly into and out of Amazon Simple Storage Service (Amazon
///       S3). AWS helps you seamlessly migrate your file transfer workflows to AWS Transfer Family by
///       integrating with existing authentication systems, and providing DNS routing with Amazon Route
///       53 so nothing changes for your customers and partners, or their applications. With your data
///       in Amazon S3, you can use it with AWS services for processing, analytics, machine learning,
///       and archiving. Getting started with AWS Transfer Family is easy since there is no
///       infrastructure to buy and set up.</p>
public protocol TransferClientProtocol {
    /// <p>Used by administrators to choose which groups in the directory should have access to
    ///       upload and download files over the enabled protocols using AWS Transfer Family. For example, a
    ///       Microsoft Active Directory might contain 50,000 users, but only a small fraction might need
    ///       the ability to transfer files to the server. An administrator can use
    ///         <code>CreateAccess</code> to limit the access to the correct set of users who need this
    ///       ability.</p>
    func createAccess(input: CreateAccessInput, completion: @escaping (SdkResult<CreateAccessOutputResponse, CreateAccessOutputError>) -> Void)
    /// <p>Instantiates an auto-scaling virtual server based on the selected file transfer protocol
    ///       in AWS. When you make updates to your file transfer protocol-enabled server or when you work
    ///       with users, use the service-generated <code>ServerId</code> property that is assigned to the
    ///       newly created server.</p>
    func createServer(input: CreateServerInput, completion: @escaping (SdkResult<CreateServerOutputResponse, CreateServerOutputError>) -> Void)
    /// <p>Creates a user and associates them with an existing file transfer protocol-enabled server.
    ///       You can only create and associate users with servers that have the
    ///         <code>IdentityProviderType</code> set to <code>SERVICE_MANAGED</code>. Using parameters for
    ///         <code>CreateUser</code>, you can specify the user name, set the home directory, store the
    ///       user's public key, and assign the user's AWS Identity and Access Management (IAM)
    ///       role. You can also optionally add a scope-down policy, and assign metadata with tags that can
    ///       be used to group and search for users.</p>
    func createUser(input: CreateUserInput, completion: @escaping (SdkResult<CreateUserOutputResponse, CreateUserOutputError>) -> Void)
    /// <p>Allows you to delete the access specified in the <code>ServerID</code> and
    ///       <code>ExternalID</code> parameters.</p>
    func deleteAccess(input: DeleteAccessInput, completion: @escaping (SdkResult<DeleteAccessOutputResponse, DeleteAccessOutputError>) -> Void)
    /// <p>Deletes the file transfer protocol-enabled server that you specify.</p>
    ///
    ///          <p>No response returns from this operation.</p>
    func deleteServer(input: DeleteServerInput, completion: @escaping (SdkResult<DeleteServerOutputResponse, DeleteServerOutputError>) -> Void)
    /// <p>Deletes a user's Secure Shell (SSH) public key.</p>
    ///
    ///          <p>No response is returned from this operation.</p>
    func deleteSshPublicKey(input: DeleteSshPublicKeyInput, completion: @escaping (SdkResult<DeleteSshPublicKeyOutputResponse, DeleteSshPublicKeyOutputError>) -> Void)
    /// <p>Deletes the user belonging to a file transfer protocol-enabled server you specify.</p>
    ///
    ///          <p>No response returns from this operation.</p>
    ///
    ///          <note>
    ///             <p>When you delete a user from a server, the user's information is lost.</p>
    ///          </note>
    func deleteUser(input: DeleteUserInput, completion: @escaping (SdkResult<DeleteUserOutputResponse, DeleteUserOutputError>) -> Void)
    /// <p>Describes the access that is assigned to the specific file transfer protocol-enabled
    ///       server, as identified by its <code>ServerId</code> property and its
    ///       <code>ExternalID</code>.</p>
    ///
    ///          <p>The response from this call returns the properties of the access that is associated with
    ///       the <code>ServerId</code> value that was specified.</p>
    func describeAccess(input: DescribeAccessInput, completion: @escaping (SdkResult<DescribeAccessOutputResponse, DescribeAccessOutputError>) -> Void)
    /// <p>Describes the security policy that is attached to your file transfer protocol-enabled
    ///       server. The response contains a description of the security policy's properties. For more
    ///       information about security policies, see <a href="https://docs.aws.amazon.com/transfer/latest/userguide/security-policies.html">Working with security
    ///         policies</a>.</p>
    func describeSecurityPolicy(input: DescribeSecurityPolicyInput, completion: @escaping (SdkResult<DescribeSecurityPolicyOutputResponse, DescribeSecurityPolicyOutputError>) -> Void)
    /// <p>Describes a file transfer protocol-enabled server that you specify by passing the
    ///         <code>ServerId</code> parameter.</p>
    ///
    ///          <p>The response contains a description of a server's properties. When you set
    ///         <code>EndpointType</code> to VPC, the response will contain the
    ///       <code>EndpointDetails</code>.</p>
    func describeServer(input: DescribeServerInput, completion: @escaping (SdkResult<DescribeServerOutputResponse, DescribeServerOutputError>) -> Void)
    /// <p>Describes the user assigned to the specific file transfer protocol-enabled server, as
    ///       identified by its <code>ServerId</code> property.</p>
    ///
    ///          <p>The response from this call returns the properties of the user associated with the
    ///         <code>ServerId</code> value that was specified.</p>
    func describeUser(input: DescribeUserInput, completion: @escaping (SdkResult<DescribeUserOutputResponse, DescribeUserOutputError>) -> Void)
    /// <p>Adds a Secure Shell (SSH) public key to a user account identified by a
    ///         <code>UserName</code> value assigned to the specific file transfer protocol-enabled server,
    ///       identified by <code>ServerId</code>.</p>
    ///
    ///          <p>The response returns the <code>UserName</code> value, the <code>ServerId</code> value, and
    ///       the name of the <code>SshPublicKeyId</code>.</p>
    func importSshPublicKey(input: ImportSshPublicKeyInput, completion: @escaping (SdkResult<ImportSshPublicKeyOutputResponse, ImportSshPublicKeyOutputError>) -> Void)
    /// <p>Lists the details for all the accesses you have on your server.</p>
    func listAccesses(input: ListAccessesInput, completion: @escaping (SdkResult<ListAccessesOutputResponse, ListAccessesOutputError>) -> Void)
    /// <p>Lists the security policies that are attached to your file transfer protocol-enabled
    ///       servers.</p>
    func listSecurityPolicies(input: ListSecurityPoliciesInput, completion: @escaping (SdkResult<ListSecurityPoliciesOutputResponse, ListSecurityPoliciesOutputError>) -> Void)
    /// <p>Lists the file transfer protocol-enabled servers that are associated with your AWS
    ///       account.</p>
    func listServers(input: ListServersInput, completion: @escaping (SdkResult<ListServersOutputResponse, ListServersOutputError>) -> Void)
    /// <p>Lists all of the tags associated with the Amazon Resource Name (ARN) that you specify. The
    ///       resource can be a user, server, or role.</p>
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    /// <p>Lists the users for a file transfer protocol-enabled server that you specify by passing
    ///       the <code>ServerId</code> parameter.</p>
    func listUsers(input: ListUsersInput, completion: @escaping (SdkResult<ListUsersOutputResponse, ListUsersOutputError>) -> Void)
    /// <p>Changes the state of a file transfer protocol-enabled server from <code>OFFLINE</code> to
    ///         <code>ONLINE</code>. It has no impact on a server that is already <code>ONLINE</code>. An
    ///         <code>ONLINE</code> server can accept and process file transfer jobs.</p>
    ///
    ///          <p>The state of <code>STARTING</code> indicates that the server is in an intermediate state,
    ///       either not fully able to respond, or not fully online. The values of <code>START_FAILED</code>
    ///       can indicate an error condition.</p>
    ///
    ///          <p>No response is returned from this call.</p>
    func startServer(input: StartServerInput, completion: @escaping (SdkResult<StartServerOutputResponse, StartServerOutputError>) -> Void)
    /// <p>Changes the state of a file transfer protocol-enabled server from <code>ONLINE</code> to
    ///         <code>OFFLINE</code>. An <code>OFFLINE</code> server cannot accept and process file transfer
    ///       jobs. Information tied to your server, such as server and user properties, are not affected by
    ///       stopping your server.</p>
    ///
    ///          <note>
    ///             <p>Stopping the server will not reduce or impact your file transfer protocol endpoint
    ///         billing; you must delete the server to stop being billed.</p>
    ///          </note>
    ///
    ///          <p>The state of <code>STOPPING</code> indicates that the server is in an intermediate state,
    ///       either not fully able to respond, or not fully offline. The values of <code>STOP_FAILED</code>
    ///       can indicate an error condition.</p>
    ///
    ///          <p>No response is returned from this call.</p>
    func stopServer(input: StopServerInput, completion: @escaping (SdkResult<StopServerOutputResponse, StopServerOutputError>) -> Void)
    /// <p>Attaches a key-value pair to a resource, as identified by its Amazon Resource Name (ARN).
    ///       Resources are users, servers, roles, and other entities.</p>
    ///
    ///          <p>There is no response returned from this call.</p>
    func tagResource(input: TagResourceInput, completion: @escaping (SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// <p>If the <code>IdentityProviderType</code> of a file transfer protocol-enabled server is
    ///         <code>AWS_DIRECTORY_SERVICE</code> or <code>API_Gateway</code>, tests whether your identity
    ///       provider is set up successfully. We highly recommend that you call this operation to test your
    ///       authentication method as soon as you create your server. By doing so, you can troubleshoot
    ///       issues with the identity provider integration to ensure that your users can successfully use
    ///       the service.</p>
    func testIdentityProvider(input: TestIdentityProviderInput, completion: @escaping (SdkResult<TestIdentityProviderOutputResponse, TestIdentityProviderOutputError>) -> Void)
    /// <p>Detaches a key-value pair from a resource, as identified by its Amazon Resource Name
    ///       (ARN). Resources are users, servers, roles, and other entities.</p>
    ///
    ///          <p>No response is returned from this call.</p>
    func untagResource(input: UntagResourceInput, completion: @escaping (SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    /// <p>Allows you to update parameters for the access specified in the <code>ServerID</code> and
    ///       <code>ExternalID</code> parameters.</p>
    func updateAccess(input: UpdateAccessInput, completion: @escaping (SdkResult<UpdateAccessOutputResponse, UpdateAccessOutputError>) -> Void)
    /// <p>Updates the file transfer protocol-enabled server's properties after that server has
    ///       been created.</p>
    ///
    ///          <p>The <code>UpdateServer</code> call returns the <code>ServerId</code> of the server you
    ///       updated.</p>
    func updateServer(input: UpdateServerInput, completion: @escaping (SdkResult<UpdateServerOutputResponse, UpdateServerOutputError>) -> Void)
    /// <p>Assigns new properties to a user. Parameters you pass modify any or all of the following:
    ///       the home directory, role, and policy for the <code>UserName</code> and <code>ServerId</code>
    ///       you specify.</p>
    ///
    ///          <p>The response returns the <code>ServerId</code> and the <code>UserName</code> for the
    ///       updated user.</p>
    func updateUser(input: UpdateUserInput, completion: @escaping (SdkResult<UpdateUserOutputResponse, UpdateUserOutputError>) -> Void)
}