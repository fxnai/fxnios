//
//  Function.swift
//  Function
//
//  Created by Yusuf Olokoba on 10/21/2023.
//  Copyright © 2024 NatML Inc. All rights reserved.
//

/// Function client.
public class Function {
    
    /// Manage users.
    public let users: UserService

    /// Manage predictors.
    public let predictors: PredictorService

    /// Make predictions.
    public let predictions: PredictionService

    /// Function API client.
    public let client: FunctionClient
    
    /// Function client version.
    public static let version = "0.0.1"
    
    /// Create the Function client.
    /// - Parameters:
    ///   - accessKey: Function access key.
    ///   - url: Function API URL.
    public init (accessKey: String? = nil, url: String? = nil) {
        let client = FunctionClient(accessKey: accessKey, url: url)
        self.client = client
        self.users = UserService(client: client)
        self.predictors = PredictorService(client: client)
        self.predictions = PredictionService(client: client)
    }
}
