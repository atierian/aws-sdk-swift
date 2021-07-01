// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The parameters to configure the find matches transform.</p>
public struct FindMatchesParameters: Equatable {
    /// <p>The value that is selected when tuning your transform for a balance between accuracy and
    ///       cost. A value of 0.5 means that the system balances accuracy and cost concerns. A value of 1.0
    ///       means a bias purely for accuracy, which typically results in a higher cost, sometimes
    ///       substantially higher. A value of 0.0 means a bias purely for cost, which results in a less
    ///       accurate <code>FindMatches</code> transform, sometimes with unacceptable accuracy.</p>
    /// 	
    /// 	        <p>Accuracy measures how well the transform finds true positives and true negatives. Increasing accuracy requires more machine resources and cost. But it also results in increased recall. </p>
    /// 	
    /// 	        <p>Cost measures how many compute resources, and thus money, are consumed to run the
    ///       transform.</p>
    public let accuracyCostTradeoff: Double?
    /// <p>The value to switch on or off to force the output to match the provided labels from users. If the value is <code>True</code>, the <code>find matches</code> transform forces the output to match the provided labels. The results override the normal conflation results. If the value is <code>False</code>, the <code>find matches</code> transform does not ensure all the labels provided are respected, and the results rely on the trained model.</p>
    ///          <p>Note that setting this value to true may increase the conflation execution time.</p>
    public let enforceProvidedLabels: Bool?
    /// <p>The value selected when tuning your transform for a balance between precision and recall.
    ///       A value of 0.5 means no preference; a value of 1.0 means a bias purely for precision, and a
    ///       value of 0.0 means a bias for recall. Because this is a tradeoff, choosing values close to 1.0
    ///       means very low recall, and choosing values close to 0.0 results in very low precision.</p>
    /// 	
    /// 	        <p>The precision metric indicates how often your model is correct when it predicts a match. </p>
    /// 	
    /// 	        <p>The recall metric indicates that for an actual match, how often your model predicts the
    ///       match.</p>
    public let precisionRecallTradeoff: Double?
    /// <p>The name of a column that uniquely identifies rows in the source table. Used to help identify matching records.</p>
    public let primaryKeyColumnName: String?

    public init (
        accuracyCostTradeoff: Double? = nil,
        enforceProvidedLabels: Bool? = nil,
        precisionRecallTradeoff: Double? = nil,
        primaryKeyColumnName: String? = nil
    )
    {
        self.accuracyCostTradeoff = accuracyCostTradeoff
        self.enforceProvidedLabels = enforceProvidedLabels
        self.precisionRecallTradeoff = precisionRecallTradeoff
        self.primaryKeyColumnName = primaryKeyColumnName
    }
}

extension FindMatchesParameters: CustomDebugStringConvertible {
    public var debugDescription: String {
        "FindMatchesParameters(accuracyCostTradeoff: \(String(describing: accuracyCostTradeoff)), enforceProvidedLabels: \(String(describing: enforceProvidedLabels)), precisionRecallTradeoff: \(String(describing: precisionRecallTradeoff)), primaryKeyColumnName: \(String(describing: primaryKeyColumnName)))"}
}