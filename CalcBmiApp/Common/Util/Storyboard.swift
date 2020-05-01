//
//  Storyboard.swift
//  CalcBmiApp
//
//  Created by 山田隼也 on 2020/05/01.
//  Copyright © 2020 Shunya Yamada. All rights reserved.
//

import UIKit

enum Storyboard: String {
    case InputViewController
    case ResultViewController
    
    func instantiate<VC: UIViewController>(_: VC.Type, inBundle: Bundle? = nil) -> VC {
        guard let vc = UIStoryboard(name: self.rawValue, bundle: inBundle).instantiateInitialViewController() as? VC else {
            fatalError("Couldn't instantiate \(self.rawValue)")
        }
        return vc
    }
}
