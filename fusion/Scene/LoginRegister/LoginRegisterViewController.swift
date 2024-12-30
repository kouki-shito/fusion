//
//  LoginRegisterViewController.swift
//  fusion
//
//  Created by 市東 on 2024/12/30.
//

import UIKit
import RxSwift
import RxCocoa

class LoginRegisterViewController: UIViewController, Storyboarded {

    // MARK: - Injection Properties
    private var viewModel: LoginRegisterViewModelType!

    // MARK: - Private Properties
    private let disposeBag = DisposeBag()

    func inject(viewModelInj: LoginRegisterViewModelType) {
        viewModel = viewModelInj
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        bind()
        send()
    }

    func bind() {
    }

    func send() {
    }

}
