//
//  PhoneAuthorizationViewModel.swift
//  phoneAuth
//
//  Created by Вадим on 04.07.2024.
//

import Combine

final class PhoneAuthorizationViewModel: PhoneAuthorizationProtocol {
    
    @Published
    var text = ""
    
    @Published
    var isCorrectPhoneNumber: Bool = false
    
    private(set) var cancellables = Set<AnyCancellable>()
    
    init() {
        $text
            .dropFirst()
            .sink { [weak self] text in
                guard let self else { return }
                isCorrectPhoneNumber = validatePhone(text)
            }
            .store(in: &cancellables)
    }
    
    private func validatePhone(_ enteredPhoneNumber: String) -> Bool {
        let phone = "+7 (098) 545-34-34"
        
        guard enteredPhoneNumber.count <= phone.count else {
            return true
        }
        
        let prefix = phone.prefix(enteredPhoneNumber.count)
        return prefix != enteredPhoneNumber
    }
    
}
