//
//  LoginRegisterViewController.swift
//  fusion
//
//  Created by 市東 on 2024/12/30.
//

import UIKit
import RxSwift
import RxCocoa
import Then
import RswiftResources

class LoginRegisterViewController: UIViewController, Storyboarded {

    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var enterMailForm: UITextField!
    @IBOutlet private weak var enterPasswordForm: UITextField!
    @IBOutlet private weak var forgetPasswordLabel: UILabel!
    @IBOutlet private weak var errorDescriptionLabel: UILabel!
    @IBOutlet private weak var loginButton: UIButton!
    @IBOutlet private weak var toRegisterViewButton: UIButton!

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
        setupUI()
    }

    private func bind() {
    }

    private func send() {
    }
    private func setupUI() {
        self.titleLabel.do {
            $0.text = R.string.localizable.loginRegister_titleLabel_text()
            $0.font = .customStyle(style: .title, weight: .bold)
        }
        self.enterMailForm.do {
            $0.placeholder = R.string.localizable.loginRegister_enterMailForm_placeholder()
            $0.font = .customStyle(style: .main, weight: .regular)
            $0.layer.cornerRadius = 8.0
        }
        self.enterPasswordForm.do {
            $0.placeholder = R.string.localizable.loginRegister_enterPasswordForm_placeholder()
            $0.font = .customStyle(style: .main, weight: .regular)
            $0.layer.cornerRadius = 8.0
        }
        self.forgetPasswordLabel.do {
            $0.text = R.string.localizable.loginRegister_forgetPasswordLabel_text()
            $0.font = .customStyle(style: .small, weight: .regular)
            $0.textColor = .systemIndigo.withAlphaComponent(0.8)
        }
        self.errorDescriptionLabel.do {
            $0.isHidden = true
            $0.text = ""
        }
        self.loginButton.do {
            $0.setStyles(
                type: .filled(),
                title: R.string.localizable.loginRegister_loginButton_text(),
                textColor: .white,
                bgColor: .systemIndigo,
                padding: NSDirectionalEdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16),
                fontStyle: .customStyle(style: .main, weight: .bold)
            )
            $0.configuration?.cornerStyle = .capsule
            $0.layer.cornerRadius = 32
        }
        self.toRegisterViewButton.do {
            $0.setStyles(
                type: .filled(),
                title: R.string.localizable.loginRegister_toRegisterViewButton_text(),
                textColor: .black,
                bgColor: .systemGray5,
                padding: NSDirectionalEdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16),
                fontStyle: .customStyle(style: .main, weight: .bold)
            )
            $0.configuration?.cornerStyle = .capsule
            $0.layer.cornerRadius = 32
        }
    }
}
