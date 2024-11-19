//
//  KeyChain.swift
//  KCLibrarySwift
//
//  Created by Juan Carlos Rubio Casas on 19/11/24.
//
import Foundation
import Security
import KeychainSwift

public struct KeyChainKC {
    
    @discardableResult public func saveKC(key: String, value: String) -> Bool {
        if let data = value.data(using: .utf8) {
            let keychain = KeychainSwift()
            return keychain.set(data, forKey: key)
        } else {
            return false
        }
    }
    
    public func loadKC(key: String) -> String? {
        let keychain = KeychainSwift()
        if let data = keychain.get(key) {
            return data
        } else {
            return ""
        }
    }
    
    
}
