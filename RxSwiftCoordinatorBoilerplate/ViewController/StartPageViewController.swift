//
//  StartPageViewController.swift
//  RxSwiftCoordinatorBoilerplate
//
//  Created by Hayden Do on 3/09/18.
//  Copyright © 2018 Hayden. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class StartPageViewController: AppViewController, StoryboardInitializable {
    var viewModel: StartPageViewModel!
    let disposeBag = DisposeBag()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
