//
//  LoginRegisterViewModel.swift
//  fusion
//
//  Created by 市東 on 2024/12/30.
//

import RxSwift
import RxCocoa

protocol LoginRegisterViewModelInputs {
}

protocol LoginRegisterViewModelOutputs {
}

protocol LoginRegisterViewModelType {
    var inputs: LoginRegisterViewModelInputs { get }
    var outputs: LoginRegisterViewModelOutputs { get }
}

class LoginRegisterViewModel: LoginRegisterViewModelInputs, LoginRegisterViewModelOutputs, LoginRegisterViewModelType {

    // MARK: - Inject Properties

    // MARK: - Input Streams
    // Behavior or Publish (Behavior→過去の値も流れる,Publish→過去を保持しない)(Subject→エラーも取れる,Relay→値だけ)

    // MARK: - Output Streams
    // Driver or Signal (Driver→過去の値も流れる,Signal→過去を保持しない)(エラーがない)

    // MARK: - Relays

    // MARK: - Types
    // こうすることでinputs.〇〇,outputs.〇〇のようにできる
    var inputs: LoginRegisterViewModelInputs { self }
    var outputs: LoginRegisterViewModelOutputs { self }

    // MARK: -Private Properties
    private let disposeBag = DisposeBag()

    init() {
        // Driver/Signal = Relay .asDriver() / .asSignal()
    }
}
