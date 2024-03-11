//
//  ViewControllerViewModel.swift
//  RxSwiftSample
//
//  Created by Lala on 12.03.24.
//

import UIKit
import RxSwift
import RxCocoa

class ViewControllerViewModel: NSObject {

    let nameText : BehaviorRelay<String?> = BehaviorRelay(value: "")
    let lastNameText : BehaviorRelay<String?> = BehaviorRelay(value: "")
    
    var onCompleteSubject : PublishSubject<Bool> = PublishSubject()
    var errorSubject : PublishSubject<String> = PublishSubject()
    
    func save() {
        let name = nameText.value
        let lastName = lastNameText.value
        
        if name!.isEmpty {
            errorSubject.onNext("Adı alanı boş olamaz.")
            errorSubject.onNext("Adı alanı boş olamaz.-1")
            errorSubject.onNext("Adı alanı boş olamaz.-2")
            return
        }
        
        onCompleteSubject.onNext(true)
    }
}
