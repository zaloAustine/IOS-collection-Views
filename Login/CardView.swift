//
//  CardView.swift
//  Login
//
//  Created by AUSTINE on 10/10/2021.
//

import UIKit

@IBDesignable
class CardView: UIView {

    @IBInspectable var cornerRedious : CGFloat = 8
    @IBInspectable var shadowOffsetWidth : CGFloat = 0
    @IBInspectable var shadowOffsetHeight : CGFloat = 5
    @IBInspectable var shadowColor : UIColor = UIColor.darkGray
    @IBInspectable var shadowOpcity : CGFloat = 0.5
    @IBInspectable var viewBackgroundColor : UIColor = .white
    
    override func layoutSubviews() {
    layer.cornerRadius = cornerRedious
    layer.shadowColor = shadowColor.cgColor
    layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetHeight)
    let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRedious)
    layer.shadowPath = shadowPath.cgPath
    layer.shadowOpacity = Float(shadowOpcity)
    layer.shouldRasterize = true
    layer.rasterizationScale = UIScreen.main.scale
    layer.backgroundColor = viewBackgroundColor.cgColor
    }

}
