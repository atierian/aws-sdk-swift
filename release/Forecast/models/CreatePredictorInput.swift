// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreatePredictorInput: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the algorithm to use for model training. Required if
    ///         <code>PerformAutoML</code> is not set to <code>true</code>.</p>
    ///          <p class="title">
    ///             <b>Supported algorithms:</b>
    ///          </p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>arn:aws:forecast:::algorithm/ARIMA</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>arn:aws:forecast:::algorithm/CNN-QR</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>arn:aws:forecast:::algorithm/Deep_AR_Plus</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>arn:aws:forecast:::algorithm/ETS</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>arn:aws:forecast:::algorithm/NPTS</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>arn:aws:forecast:::algorithm/Prophet</code>
    ///                </p>
    ///             </li>
    ///          </ul>
    public let algorithmArn: String?
    /// <p>Used to overide the default AutoML strategy, which is to optimize predictor accuracy.
    ///             To apply an AutoML strategy that minimizes training time, use
    ///                 <code>LatencyOptimized</code>.</p>
    ///         <p>This parameter is only valid for predictors trained using AutoML.</p>
    public let autoMLOverrideStrategy: AutoMLOverrideStrategy?
    /// <p>An AWS Key Management Service (KMS) key and the AWS Identity and Access Management (IAM) role that Amazon Forecast can assume to access
    ///       the key.</p>
    public let encryptionConfig: EncryptionConfig?
    /// <p>Used to override the default evaluation parameters of the specified algorithm. Amazon Forecast
    ///       evaluates a predictor by splitting a dataset into training data and testing data. The
    ///       evaluation parameters define how to perform the split and the number of iterations.</p>
    public let evaluationParameters: EvaluationParameters?
    /// <p>The featurization configuration.</p>
    public let featurizationConfig: FeaturizationConfig?
    /// <p>Specifies the number of time-steps that the model is trained to predict. The forecast
    ///       horizon is also called the prediction length.</p>
    ///          <p>For example, if you configure a dataset for daily data collection (using the
    ///         <code>DataFrequency</code> parameter of the <a>CreateDataset</a> operation) and
    ///       set the forecast horizon to 10, the model returns predictions for 10 days.</p>
    ///          <p>The maximum forecast horizon is the lesser of 500 time-steps or 1/3 of the
    ///       TARGET_TIME_SERIES dataset length.</p>
    public let forecastHorizon: Int?
    /// <p>Specifies the forecast types used to train a predictor. You can specify up to five forecast types.
    ///       Forecast types can be quantiles from 0.01 to 0.99, by increments of 0.01 or higher. You can also specify
    ///       the mean forecast with <code>mean</code>.
    ///     </p>
    ///          <p>The default value is <code>["0.10", "0.50", "0.9"]</code>.</p>
    public let forecastTypes: [String]?
    /// <p>Provides hyperparameter override values for the algorithm. If you don't provide this
    ///       parameter, Amazon Forecast uses default values. The individual algorithms specify which
    ///       hyperparameters support hyperparameter optimization (HPO). For more information, see <a>aws-forecast-choosing-recipes</a>.</p>
    ///          <p>If you included the <code>HPOConfig</code> object, you must set <code>PerformHPO</code> to
    ///       true.</p>
    public let hPOConfig: HyperParameterTuningJobConfig?
    /// <p>Describes the dataset group that contains the data to use to train the predictor.</p>
    public let inputDataConfig: InputDataConfig?
    /// <p>Whether to perform AutoML. When Amazon Forecast performs AutoML, it evaluates the algorithms it
    ///       provides and chooses the best algorithm and configuration for your training dataset.</p>
    ///          <p>The default value is <code>false</code>. In this case, you are required to specify an
    ///       algorithm.</p>
    ///          <p>Set <code>PerformAutoML</code> to <code>true</code> to have Amazon Forecast perform AutoML. This
    ///       is a good option if you aren't sure which algorithm is suitable for your training data. In
    ///       this case, <code>PerformHPO</code> must be false.</p>
    public let performAutoML: Bool?
    /// <p>Whether to perform hyperparameter optimization (HPO). HPO finds optimal hyperparameter
    ///       values for your training data. The process of performing HPO is known as running a
    ///       hyperparameter tuning job.</p>
    ///          <p>The default value is <code>false</code>. In this case, Amazon Forecast uses default
    ///       hyperparameter values from the chosen algorithm.</p>
    ///          <p>To override the default values, set <code>PerformHPO</code> to <code>true</code> and,
    ///       optionally, supply the <a>HyperParameterTuningJobConfig</a> object. The tuning job
    ///       specifies a metric to optimize, which hyperparameters participate in tuning, and the valid
    ///       range for each tunable hyperparameter. In this case, you are required to specify an algorithm
    ///       and <code>PerformAutoML</code> must be false.</p>
    ///          <p>The following algorithms support HPO:</p>
    ///          <ul>
    ///             <li>
    ///                <p>DeepAR+</p>
    ///             </li>
    ///             <li>
    ///                <p>CNN-QR</p>
    ///             </li>
    ///          </ul>
    public let performHPO: Bool?
    /// <p>A name for the predictor.</p>
    public let predictorName: String?
    /// <p>The optional metadata that you apply to the predictor to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p>
    ///          <p>The following basic restrictions apply to tags:</p>
    ///          <ul>
    ///             <li>
    ///                <p>Maximum number of tags per resource - 50.</p>
    ///             </li>
    ///             <li>
    ///                <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p>
    ///             </li>
    ///             <li>
    ///                <p>Maximum key length - 128 Unicode characters in UTF-8.</p>
    ///             </li>
    ///             <li>
    ///                <p>Maximum value length - 256 Unicode characters in UTF-8.</p>
    ///             </li>
    ///             <li>
    ///                <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p>
    ///             </li>
    ///             <li>
    ///                <p>Tag keys and values are case sensitive.</p>
    ///             </li>
    ///             <li>
    ///                <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has <code>aws</code> as its prefix but the key does not, then Forecast considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of <code>aws</code> do not count against your tags per resource limit.</p>
    ///             </li>
    ///          </ul>
    public let tags: [Tag]?
    /// <p>The hyperparameters to override for model training. The hyperparameters that you can
    ///       override are listed in the individual algorithms. For the list of supported algorithms, see
    ///         <a>aws-forecast-choosing-recipes</a>.</p>
    public let trainingParameters: [String:String]?

    public init (
        algorithmArn: String? = nil,
        autoMLOverrideStrategy: AutoMLOverrideStrategy? = nil,
        encryptionConfig: EncryptionConfig? = nil,
        evaluationParameters: EvaluationParameters? = nil,
        featurizationConfig: FeaturizationConfig? = nil,
        forecastHorizon: Int? = nil,
        forecastTypes: [String]? = nil,
        hPOConfig: HyperParameterTuningJobConfig? = nil,
        inputDataConfig: InputDataConfig? = nil,
        performAutoML: Bool? = nil,
        performHPO: Bool? = nil,
        predictorName: String? = nil,
        tags: [Tag]? = nil,
        trainingParameters: [String:String]? = nil
    )
    {
        self.algorithmArn = algorithmArn
        self.autoMLOverrideStrategy = autoMLOverrideStrategy
        self.encryptionConfig = encryptionConfig
        self.evaluationParameters = evaluationParameters
        self.featurizationConfig = featurizationConfig
        self.forecastHorizon = forecastHorizon
        self.forecastTypes = forecastTypes
        self.hPOConfig = hPOConfig
        self.inputDataConfig = inputDataConfig
        self.performAutoML = performAutoML
        self.performHPO = performHPO
        self.predictorName = predictorName
        self.tags = tags
        self.trainingParameters = trainingParameters
    }
}

extension CreatePredictorInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreatePredictorInput(algorithmArn: \(String(describing: algorithmArn)), autoMLOverrideStrategy: \(String(describing: autoMLOverrideStrategy)), encryptionConfig: \(String(describing: encryptionConfig)), evaluationParameters: \(String(describing: evaluationParameters)), featurizationConfig: \(String(describing: featurizationConfig)), forecastHorizon: \(String(describing: forecastHorizon)), forecastTypes: \(String(describing: forecastTypes)), hPOConfig: \(String(describing: hPOConfig)), inputDataConfig: \(String(describing: inputDataConfig)), performAutoML: \(String(describing: performAutoML)), performHPO: \(String(describing: performHPO)), predictorName: \(String(describing: predictorName)), tags: \(String(describing: tags)), trainingParameters: \(String(describing: trainingParameters)))"}
}