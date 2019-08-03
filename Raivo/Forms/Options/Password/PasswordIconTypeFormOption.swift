//
// Raivo OTP
//
// Copyright (c) 2019 Tijme Gommers. All rights reserved. Raivo OTP
// is provided 'as-is', without any express or implied warranty.
//
// This source code is licensed under the CC BY-NC 4.0 license found
// in the LICENSE.md file in the root directory of this source tree.
// 

import Foundation

public class PasswordIconTypeFormOption: BaseFormOption {
    
    static let OPTION_CLEAR = PasswordIconTypeFormOption("clear", description: "Remove current icon")
    static let OPTION_RAIVO_REPOSITORY = PasswordIconTypeFormOption("raivo_repository", description: "Raivo's icon repository")
    
    static let options_including_clear = [
        OPTION_CLEAR,
        OPTION_RAIVO_REPOSITORY
    ]
    
    static let options = Array(PasswordIconTypeFormOption.options_including_clear.suffix(from: 1))
    
    public var value: String
    
    public var description: String
    
    init(_ value: String, description: String) {
        self.value = value
        self.description = description
    }
    
    static func build(_ value: String) -> PasswordIconTypeFormOption? {
        for option in options {
            if option.value.elementsEqual(value) {
                return option
            }
        }
        
        return nil
    }
    
    public static func == (lhs: PasswordIconTypeFormOption, rhs: PasswordIconTypeFormOption) -> Bool {
        return lhs.value == rhs.value
    }
    
}