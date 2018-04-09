//
//  NVActivityIndicatorAnimationCreamsStroke.swift
//  NVActivityIndicatorView
//
//  Created by Young_Dev on 2018/4/9.
//

import Foundation

class NVActivityIndicatorAnimationCreamsStroke: NVActivityIndicatorAnimationDelegate {
    func setUpAnimation(in layer: CALayer, size: CGSize, color: UIColor) {
        
        let strokeStartDuration: Double = 1.2
        
        let rotationAnimation = CABasicAnimation(keyPath: "transform.rotation")
        rotationAnimation.byValue = Float.pi * 2
        rotationAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        rotationAnimation.duration = strokeStartDuration
        rotationAnimation.repeatCount = Float.infinity
        rotationAnimation.fillMode = kCAFillModeForwards
        rotationAnimation.autoreverses = false
        
        let circle = NVActivityIndicatorShape.creamsStroke.layerWith(size: size, color: color)
        let frame = CGRect(
            x: (layer.bounds.width - size.width) / 2,
            y: (layer.bounds.height - size.height) / 2,
            width: size.width,
            height: size.height
        )
        
        circle.frame = frame
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [color.cgColor, UIColor.white.cgColor]
        class NVActivityIndicatorAnimationCreamsStroke: NVActivityIndicatorAnimationDelegate {
            func setUpAnimation(in layer: CALayer, size: CGSize, color: UIColor) {
                
                let strokeStartDuration: Double = 1.2
                
                let rotationAnimation = CABasicAnimation(keyPath: "transform.rotation")
                rotationAnimation.byValue = Float.pi * 2
                rotationAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
                rotationAnimation.duration = strokeStartDuration
                rotationAnimation.repeatCount = Float.infinity
                rotationAnimation.fillMode = kCAFillModeForwards
                rotationAnimation.autoreverses = false
                
                let circle = NVActivityIndicatorShape.creamsStroke.layerWith(size: size, color: color)
                let frame = CGRect(
                    x: (layer.bounds.width - size.width) / 2,
                    y: (layer.bounds.height - size.height) / 2,
                    width: size.width,
                    height: size.height
                )
                
                circle.frame = frame
                
                let gradientLayer = CAGradientLayer()
                gradientLayer.colors = [UIColor.blue.cgColor, UIColor.white.cgColor]
                gradientLayer.locations = [NSNumber(value: 0.3), NSNumber(value: 1.0)]
                gradientLayer.frame = CGRect(x: 0, y: 0, width: size.width, height: size.height)
                gradientLayer.startPoint = CGPoint(x: 0, y: 1)
                gradientLayer.endPoint = CGPoint(x: 1, y: 0)
                gradientLayer.mask = circle
                
                gradientLayer.add(rotationAnimation, forKey: "animation")
                layer.addSublayer(gradientLayer)
            }
        }

        gradientLayer.frame = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        gradientLayer.startPoint = CGPoint(x: 0, y: 1)
        gradientLayer.endPoint = CGPoint(x: 1, y: 0)
        gradientLayer.mask = circle
        
        gradientLayer.add(rotationAnimation, forKey: "animation")
        layer.addSublayer(gradientLayer)
    }
}

