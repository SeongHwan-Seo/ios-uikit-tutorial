//
//  UITextField+Ext.swift
//  weekly-challenge01
//
//  Created by SHSEO on 2022/08/22.
//

import Foundation
import UIKit

extension UITextField {
func addLeftPadding() {
let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 18, height: self.frame.height))
self.leftView = paddingView
self.leftViewMode = ViewMode.always
  }
}
