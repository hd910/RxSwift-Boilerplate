//
//  AppCoordinator.swift
//  RxSwiftCoordinatorBoilerplate
//
//  Created by Hayden Do on 3/09/18.
//  Copyright © 2018 Hayden. All rights reserved.
//

import UIKit
import RxSwift

class AppCoordinator: BaseCoordinator<Void> {
    private let window: UIWindow
    let viewModel = AppViewModel()
    
    init(window: UIWindow) {
        self.window = window
        super.init()

    }

    override func start() -> Observable<Void> {
        return showStartPage()
    }

    func showStartPage() -> Observable<Void> {
        let coordinator = StartPageCoordinator(window: window)
        return coordinate(to: coordinator)
    }
}
