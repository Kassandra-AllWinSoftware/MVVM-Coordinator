//
//  Coordinator.swift
//  MVVM-Coordinator
//
//  Created by User-K02 on 6/30/23.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    func start()
}

protocol UICoordinator:Coordinator {
    var transitionDelegate: TransitionDelegate { get set }
    var navigationController: UINavigationController { get set }
    var primaryViewController: UIViewController { get set }
    var apiManager: PokemonAPI { get set }
}

extension UICoordinator {
    
}
