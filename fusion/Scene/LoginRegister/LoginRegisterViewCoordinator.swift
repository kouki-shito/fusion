//
//  LoginRegisterViewCoordinator.swift
//  fusion
//
//  Created by 市東 on 2024/12/30.
//

import Foundation
import UIKit
import RxSwift
import RxCocoa

final class LoginRegisterViewCoordinator: Coordinator {

    private let navigator: UINavigationController
    private var loginRegisterViewController: LoginRegisterViewController?
    private var viewModel: LoginRegisterViewModelType?
    private var disposeBag = DisposeBag()

    init(navigator: UINavigationController) {
        self.navigator = navigator
    }

    func start() {
        let vc = LoginRegisterViewController.instantiate(name: "LoginRegister")
        let vm = LoginRegisterViewModel()
        vc.inject(viewModelInj: vm)
        self.navigator.viewControllers = [vc]
        self.loginRegisterViewController = vc
        self.viewModel = vm
        bind()
        send()
    }

    func bind() {
        // next(toC: ##ViewCoordinator(navigator: self.navigator))
    }

    func send() {
    }

    func next(toC: Coordinator) {
        let nextCoordinator = toC
        nextCoordinator.start()
    }

    func cancel() {
    }

}
