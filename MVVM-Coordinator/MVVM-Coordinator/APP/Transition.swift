//
//  Transition.swift
//  MVVM-Coordinator
//
//  Created by User-K02 on 6/30/23.
//

import Foundation

enum Transition {
    case showLogin
    case showDashboard
}

protocol TransitionDelegate: AnyObject {
    func process(transition: Transition)
}
