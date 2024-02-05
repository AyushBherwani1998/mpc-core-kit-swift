//
//  File.swift
//  
//
//  Created by CW Lee on 23/01/2024.
//

import Foundation
import CommonSources
import tkey_mpc_swift

public struct CoreKitOptions {
    public var disableHashFactor : Bool
    public var Web3AuthClientId : String
    public var network : TorusNetwork
}


public struct CoreKitState {
    // share index used for backup share recovery
    public var deviceMetadataShareIndex: String?
}

public struct IdTokenLoginParams {
  /**
   * Name of the verifier created on Web3Auth Dashboard. In case of Aggregate Verifier, the name of the top level aggregate verifier.
   */
  public var verifier: String

  /**
   * Unique Identifier for the User. The verifier identifier field set for the verifier/ sub verifier. E.g. "sub" field in your on jwt id token.
   */
  public var verifierId: String

  /**
   * The idToken received from the Auth Provider.
   */
  public var idToken: String

  /**
   * Name of the sub verifier in case of aggregate verifier setup. This field should only be provided in case of an aggregate verifier.
   */
  public var subVerifier: String?

  /**
   * Extra verifier params in case of a WebAuthn verifier type.
   */
//  public var extraVerifierParams?: WebAuthnExtraParams;

  /**
   * Any additional parameter (key value pair) you'd like to pass to the login function.
   */
    public var additionalParams: [String: Any]?

  /**
   * Key to import key into Tss during first time login.
   */
//  public var importTssKey?: String
}
