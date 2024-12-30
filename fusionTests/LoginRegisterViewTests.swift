//
//  LoginRegisterViewTests.swift
//  fusion
//
//  Created by 市東 on 2024/12/30.
//

import XCTest
import RxSwift
import RxCocoa
import RxBlocking
import RxTest

@testable import fusion

final class LoginRegisterViewTests: XCTestCase {

    var scheduler: TestScheduler!
    var disposeBag: DisposeBag!
    var vm: LoginRegisterViewModelType!
    var vc: LoginRegisterViewController!

    override func setUp() {
        super.setUp()
        vm = LoginRegisterViewModel()
        vc = LoginRegisterViewController()
        scheduler = TestScheduler(initialClock: 0)
        disposeBag = DisposeBag()
    }

    override func tearDown() {
        super.tearDown()
    }

    // vcのprivate methods は必要でなければTestしなくてOK
    // Event<Void> は Not Equaltablなのでtrueに変換

    func testLogicSample() {
//        let schedulerListener = scheduler.createObserver(Bool.self)
//        vm.outputs.// Here
//            .map({ true })
//            .emit(to: schedulerListener)
//            .disposed(by: disposeBag)
//        scheduler.createColdObservable([.next(10, ()),.next(20, ())])
//            .bind(to: vm.inputs. // Here )
//            .disposed(by: disposeBag)
//        scheduler.start()
//        XCTAssertEqual(schedulerListener.events, [.next(10, true), .next(20, true)])
    }
}
