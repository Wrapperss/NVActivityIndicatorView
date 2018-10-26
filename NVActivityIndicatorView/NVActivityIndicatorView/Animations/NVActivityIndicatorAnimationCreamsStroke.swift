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
        rotationAnimation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
        rotationAnimation.duration = strokeStartDuration
        rotationAnimation.repeatCount = Float.infinity
        rotationAnimation.fillMode = CAMediaTimingFillMode.forwards
        rotationAnimation.autoreverses = false
        
        let circle = NVActivityIndicatorShape.creamsStroke.layerWith(size: size, color: color)
        let frame = CGRect(
            x: (layer.bounds.width - size.width) / 2,
            y: (layer.bounds.height - size.height) / 2,
            width: size.width,
            height: size.height
        )
        
        circle.frame = frame
        
        let maskLayer = CALayer()
        maskLayer.frame = circle.bounds
        let bundle = Bundle(for: NVActivityIndicatorView.self)
        let url = bundle.url(forResource: "NVActivityIndicatorView", withExtension: "bundle")
        guard let _url = url else { return }
        let imageBundle = Bundle(url: _url)
        let path = imageBundle?.path(forResource: "angle-mask", ofType: "png")
        guard let _path = path else { return }
        maskLayer.contents = UIImage(contentsOfFile: _path)?.cgImage
        circle.mask = maskLayer
        circle.add(rotationAnimation, forKey: "animation")
        layer.addSublayer(circle)
        
    }
}


