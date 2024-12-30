//
//  Coordinator.swift
//  fusion
//
//  Created by 市東 on 2024/12/29.
//

import Foundation
import UIKit

protocol Coordinator {
    func start()
}

final class AppCoordinator: Coordinator {

    private let window: UIWindow
    private let navigator: UINavigationController
    private var loginRegisterViewCoordinator: LoginRegisterViewCoordinator

    init(window: UIWindow) {
        self.window = window
        navigator = .init()
        loginRegisterViewCoordinator = LoginRegisterViewCoordinator(navigator: navigator)
    }

    func start() {
        loginRegisterViewCoordinator.start()
        window.rootViewController = navigator
        window.makeKeyAndVisible()
    }
}
