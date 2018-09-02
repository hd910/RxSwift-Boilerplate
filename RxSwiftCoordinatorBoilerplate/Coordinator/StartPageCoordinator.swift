//
//  StartPageCoordinator.swift
//  RxSwiftCoordinatorBoilerplate
//
//  Created by Hayden Do on 3/09/18.
//  Copyright © 2018 Hayden. All rights reserved.
//

import UIKit
import RxSwift

class StartPageCoordinator: BaseCoordinator<Void> {
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    override func start() -> Observable<Void> {
        let viewModel = StartPageViewModel()
        let viewController = StartPageViewController.storyboardInstantiate()
        let navigationController = UINavigationController(rootViewController: viewController)
        viewController.viewModel = viewModel
        
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        
        return Observable.empty()
    }
}
