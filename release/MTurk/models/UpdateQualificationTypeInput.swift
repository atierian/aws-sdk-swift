// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateQualificationTypeInput: Equatable {
    /// <p>The answers to the Qualification test specified in the Test parameter, in the form of an AnswerKey data structure.</p>
    public let answerKey: String?
    /// <p>Specifies whether requests for the Qualification type are granted immediately, without prompting the Worker with a Qualification test.</p>
    ///         <p>Constraints: If the Test parameter is specified, this parameter cannot be true.</p>
    public let autoGranted: Bool?
    /// <p>The Qualification value to use for automatically granted Qualifications. This parameter is used only if the AutoGranted parameter is true.</p>
    public let autoGrantedValue: Int?
    /// <p>The new description of the Qualification type.</p>
    public let description: String?
    /// <p>The ID of the Qualification type to update.</p>
    public let qualificationTypeId: String?
    /// <p>The new status of the Qualification type - Active | Inactive</p>
    public let qualificationTypeStatus: QualificationTypeStatus?
    /// <p>The amount of time, in seconds, that Workers must wait
    ///             after requesting a Qualification of the specified Qualification type
    ///             before they can retry the Qualification request. It is not possible to
    ///             disable retries for a Qualification type after it has been created with
    ///             retries enabled. If you want to disable retries, you must dispose of
    ///             the existing retry-enabled Qualification type using
    ///             DisposeQualificationType and then create a new Qualification type with
    ///             retries disabled using CreateQualificationType.</p>
    public let retryDelayInSeconds: Int?
    /// <p>The questions for the Qualification test a Worker must answer correctly to obtain a Qualification of this type. If this parameter is specified, <code>TestDurationInSeconds</code> must also be specified.</p>
    ///         <p>Constraints: Must not be longer than 65535 bytes. Must be a QuestionForm data structure. This parameter cannot be specified if AutoGranted is true.</p>
    ///         <p>Constraints: None. If not specified, the Worker may request the Qualification without answering any questions.</p>
    public let test: String?
    /// <p>The number of seconds the Worker has to complete the Qualification test, starting from the time the Worker requests the Qualification.</p>
    public let testDurationInSeconds: Int?

    public init (
        answerKey: String? = nil,
        autoGranted: Bool? = nil,
        autoGrantedValue: Int? = nil,
        description: String? = nil,
        qualificationTypeId: String? = nil,
        qualificationTypeStatus: QualificationTypeStatus? = nil,
        retryDelayInSeconds: Int? = nil,
        test: String? = nil,
        testDurationInSeconds: Int? = nil
    )
    {
        self.answerKey = answerKey
        self.autoGranted = autoGranted
        self.autoGrantedValue = autoGrantedValue
        self.description = description
        self.qualificationTypeId = qualificationTypeId
        self.qualificationTypeStatus = qualificationTypeStatus
        self.retryDelayInSeconds = retryDelayInSeconds
        self.test = test
        self.testDurationInSeconds = testDurationInSeconds
    }
}

extension UpdateQualificationTypeInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateQualificationTypeInput(answerKey: \(String(describing: answerKey)), autoGranted: \(String(describing: autoGranted)), autoGrantedValue: \(String(describing: autoGrantedValue)), description: \(String(describing: description)), qualificationTypeId: \(String(describing: qualificationTypeId)), qualificationTypeStatus: \(String(describing: qualificationTypeStatus)), retryDelayInSeconds: \(String(describing: retryDelayInSeconds)), test: \(String(describing: test)), testDurationInSeconds: \(String(describing: testDurationInSeconds)))"}
}