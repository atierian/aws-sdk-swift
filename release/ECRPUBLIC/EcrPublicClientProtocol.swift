// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <fullname>Amazon Elastic Container Registry Public</fullname>
///          <p>Amazon Elastic Container Registry (Amazon ECR) is a managed container image registry service. Amazon ECR provides both
///          public and private registries to host your container images. You can use the familiar
///          Docker CLI, or their preferred client, to push, pull, and manage images. Amazon ECR provides a
///          secure, scalable, and reliable registry for your Docker or Open Container Initiative (OCI)
///          images. Amazon ECR supports public repositories with this API. For information about the Amazon ECR
///          API for private repositories, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/APIReference/Welcome.html">Amazon Elastic Container Registry API Reference</a>.</p>
public protocol EcrPublicClientProtocol {
    /// <p>Checks the availability of one or more image layers within a repository in a public
    ///          registry. When an image is pushed to a repository, each image layer is checked to verify if
    ///          it has been uploaded before. If it has been uploaded, then the image layer is
    ///          skipped.</p>
    ///          <note>
    ///             <p>This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p>
    ///          </note>
    func batchCheckLayerAvailability(input: BatchCheckLayerAvailabilityInput, completion: @escaping (SdkResult<BatchCheckLayerAvailabilityOutputResponse, BatchCheckLayerAvailabilityOutputError>) -> Void)
    /// <p>Deletes a list of specified images within a repository in a public registry. Images are
    ///          specified with either an <code>imageTag</code> or <code>imageDigest</code>.</p>
    ///          <p>You can remove a tag from an image by specifying the image's tag in your request. When
    ///          you remove the last tag from an image, the image is deleted from your repository.</p>
    ///          <p>You can completely delete an image (and all of its tags) by specifying the image's
    ///          digest in your request.</p>
    func batchDeleteImage(input: BatchDeleteImageInput, completion: @escaping (SdkResult<BatchDeleteImageOutputResponse, BatchDeleteImageOutputError>) -> Void)
    /// <p>Informs Amazon ECR that the image layer upload has completed for a specified public registry,
    ///          repository name, and upload ID. You can optionally provide a <code>sha256</code> digest of
    ///          the image layer for data validation purposes.</p>
    ///          <p>When an image is pushed, the CompleteLayerUpload API is called once per each new image
    ///          layer to verify that the upload has completed.</p>
    ///          <note>
    ///             <p>This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p>
    ///          </note>
    func completeLayerUpload(input: CompleteLayerUploadInput, completion: @escaping (SdkResult<CompleteLayerUploadOutputResponse, CompleteLayerUploadOutputError>) -> Void)
    /// <p>Creates a repository in a public registry. For more information, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/Repositories.html">Amazon ECR
    ///             repositories</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>
    func createRepository(input: CreateRepositoryInput, completion: @escaping (SdkResult<CreateRepositoryOutputResponse, CreateRepositoryOutputError>) -> Void)
    /// <p>Deletes a repository in a public registry. If the repository contains images, you must
    ///          either delete all images in the repository or use the <code>force</code> option which
    ///          deletes all images on your behalf before deleting the repository.</p>
    func deleteRepository(input: DeleteRepositoryInput, completion: @escaping (SdkResult<DeleteRepositoryOutputResponse, DeleteRepositoryOutputError>) -> Void)
    /// <p>Deletes the repository policy associated with the specified repository.</p>
    func deleteRepositoryPolicy(input: DeleteRepositoryPolicyInput, completion: @escaping (SdkResult<DeleteRepositoryPolicyOutputResponse, DeleteRepositoryPolicyOutputError>) -> Void)
    /// <p>Returns metadata about the images in a repository in a public registry.</p>
    ///          <note>
    ///             <p>Beginning with Docker version 1.9, the Docker client compresses image layers before
    ///             pushing them to a V2 Docker registry. The output of the <code>docker images</code>
    ///             command shows the uncompressed image size, so it may return a larger image size than the
    ///             image sizes returned by <a>DescribeImages</a>.</p>
    ///          </note>
    func describeImages(input: DescribeImagesInput, completion: @escaping (SdkResult<DescribeImagesOutputResponse, DescribeImagesOutputError>) -> Void)
    /// <p>Returns the image tag details for a repository in a public registry.</p>
    func describeImageTags(input: DescribeImageTagsInput, completion: @escaping (SdkResult<DescribeImageTagsOutputResponse, DescribeImageTagsOutputError>) -> Void)
    /// <p>Returns details for a public registry.</p>
    func describeRegistries(input: DescribeRegistriesInput, completion: @escaping (SdkResult<DescribeRegistriesOutputResponse, DescribeRegistriesOutputError>) -> Void)
    /// <p>Describes repositories in a public registry.</p>
    func describeRepositories(input: DescribeRepositoriesInput, completion: @escaping (SdkResult<DescribeRepositoriesOutputResponse, DescribeRepositoriesOutputError>) -> Void)
    /// <p>Retrieves an authorization token. An authorization token represents your IAM
    ///          authentication credentials and can be used to access any Amazon ECR registry that your IAM
    ///          principal has access to. The authorization token is valid for 12 hours. This API requires
    ///          the <code>ecr-public:GetAuthorizationToken</code> and
    ///             <code>sts:GetServiceBearerToken</code> permissions.</p>
    func getAuthorizationToken(input: GetAuthorizationTokenInput, completion: @escaping (SdkResult<GetAuthorizationTokenOutputResponse, GetAuthorizationTokenOutputError>) -> Void)
    /// <p>Retrieves catalog metadata for a public registry.</p>
    func getRegistryCatalogData(input: GetRegistryCatalogDataInput, completion: @escaping (SdkResult<GetRegistryCatalogDataOutputResponse, GetRegistryCatalogDataOutputError>) -> Void)
    /// <p>Retrieve catalog metadata for a repository in a public registry. This metadata is
    ///          displayed publicly in the Amazon ECR Public Gallery.</p>
    func getRepositoryCatalogData(input: GetRepositoryCatalogDataInput, completion: @escaping (SdkResult<GetRepositoryCatalogDataOutputResponse, GetRepositoryCatalogDataOutputError>) -> Void)
    /// <p>Retrieves the repository policy for the specified repository.</p>
    func getRepositoryPolicy(input: GetRepositoryPolicyInput, completion: @escaping (SdkResult<GetRepositoryPolicyOutputResponse, GetRepositoryPolicyOutputError>) -> Void)
    /// <p>Notifies Amazon ECR that you intend to upload an image layer.</p>
    ///          <p>When an image is pushed, the InitiateLayerUpload API is called once per image layer that
    ///          has not already been uploaded. Whether or not an image layer has been uploaded is
    ///          determined by the BatchCheckLayerAvailability API action.</p>
    ///          <note>
    ///             <p>This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p>
    ///          </note>
    func initiateLayerUpload(input: InitiateLayerUploadInput, completion: @escaping (SdkResult<InitiateLayerUploadOutputResponse, InitiateLayerUploadOutputError>) -> Void)
    /// <p>List the tags for an Amazon ECR Public resource.</p>
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    /// <p>Creates or updates the image manifest and tags associated with an image.</p>
    ///          <p>When an image is pushed and all new image layers have been uploaded, the PutImage API is
    ///          called once to create or update the image manifest and the tags associated with the
    ///          image.</p>
    ///
    ///          <note>
    ///             <p>This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p>
    ///          </note>
    func putImage(input: PutImageInput, completion: @escaping (SdkResult<PutImageOutputResponse, PutImageOutputError>) -> Void)
    /// <p>Create or updates the catalog data for a public registry.</p>
    func putRegistryCatalogData(input: PutRegistryCatalogDataInput, completion: @escaping (SdkResult<PutRegistryCatalogDataOutputResponse, PutRegistryCatalogDataOutputError>) -> Void)
    /// <p>Creates or updates the catalog data for a repository in a public registry.</p>
    func putRepositoryCatalogData(input: PutRepositoryCatalogDataInput, completion: @escaping (SdkResult<PutRepositoryCatalogDataOutputResponse, PutRepositoryCatalogDataOutputError>) -> Void)
    /// <p>Applies a repository policy to the specified public repository to control access
    ///          permissions. For more information, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-policies.html">Amazon ECR Repository
    ///             Policies</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>
    func setRepositoryPolicy(input: SetRepositoryPolicyInput, completion: @escaping (SdkResult<SetRepositoryPolicyOutputResponse, SetRepositoryPolicyOutputError>) -> Void)
    /// <p>Associates the specified tags to a resource with the specified <code>resourceArn</code>.
    ///          If existing tags on a resource are not specified in the request parameters, they are not
    ///          changed. When a resource is deleted, the tags associated with that resource are deleted as
    ///          well.</p>
    func tagResource(input: TagResourceInput, completion: @escaping (SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// <p>Deletes specified tags from a resource.</p>
    func untagResource(input: UntagResourceInput, completion: @escaping (SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    /// <p>Uploads an image layer part to Amazon ECR.</p>
    ///          <p>When an image is pushed, each new image layer is uploaded in parts. The maximum size of
    ///          each image layer part can be 20971520 bytes (or about 20MB). The UploadLayerPart API is
    ///          called once per each new image layer part.</p>
    ///          <note>
    ///             <p>This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p>
    ///          </note>
    func uploadLayerPart(input: UploadLayerPartInput, completion: @escaping (SdkResult<UploadLayerPartOutputResponse, UploadLayerPartOutputError>) -> Void)
}