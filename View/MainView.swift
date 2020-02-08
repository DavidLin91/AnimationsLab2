//
//  MainView.swift
//  Animations-Lab-2
//
//  Created by David Lin on 2/5/20.
//  Copyright © 2020 David Lin (Passion Proj). All rights reserved.
//

import UIKit
import AVFoundation

class MainView: UIView {
    
    let linear = UIButton()
    let easeIn = UIButton()
    let easeOut = UIButton()
    let easeInEaseOut = UIButton()
    
    let image1 = UIImageView()
    let image2 = UIImageView()
    let image3 = UIImageView()
    let image4 = UIImageView()
    
    
    
    let resetButton = UIButton()
    let animateButton = UIButton()
    
    
    // StackViews
    
    lazy var animationButtonStack: UIStackView = {
        let animationStack = UIStackView(arrangedSubviews: animationSV())
        animationStack.axis = .horizontal
        animationStack.alignment = .center
        animationStack.distribution = .equalSpacing
        animationStack.spacing = 5
        return animationStack
    }()
    
    lazy var imageStack: UIStackView = {
        let imageStack = UIStackView(arrangedSubviews: imageSV())
        imageStack.axis = .horizontal
        imageStack.alignment = .center
        imageStack.distribution = .equalSpacing
        imageStack.spacing = 5
        return imageStack
    }()
    
    lazy var bottomButtonStack: UIStackView = {
        let imageStack = UIStackView(arrangedSubviews: bottomButtonSV())
        imageStack.axis = .horizontal
        imageStack.alignment = .center
        imageStack.distribution = .equalSpacing
        imageStack.spacing = 5
        return imageStack
    }()
    
    
    
    private func animationSV() -> [UIButton] {
        
        //linear button
        linear.setTitle("linear", for: .normal)
        linear.setTitleColor(.systemPink, for: .normal)
        linear.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        linear.layer.cornerRadius = 5.0
        linear.addTarget(self, action: #selector(linearButtonPressed), for: .touchUpInside)
        //easeIn button
        easeIn.setTitle("easeIn", for: .normal)
        easeIn.setTitleColor(.systemPink, for: .normal)
        easeIn.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        easeIn.layer.cornerRadius = 5.0
        easeIn.addTarget(self, action: #selector(easeInButtonPressed), for: .touchUpInside)
        //easeOutButton
        easeOut.setTitle("easeOut", for: .normal)
        easeOut.setTitleColor(.systemPink, for: .normal)
        easeOut.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        easeOut.layer.cornerRadius = 5.0
        easeOut.addTarget(self, action: #selector(easeOutButtonPressed), for: .touchUpInside)
        //easeIneaseOutbutton
        easeInEaseOut.setTitle("easeInEaseOut", for: .normal)
        easeInEaseOut.setTitleColor(.systemPink, for: .normal)
        easeInEaseOut.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        easeInEaseOut.layer.cornerRadius = 5.0
        easeInEaseOut.addTarget(self, action: #selector(easeInEaseOutButtonPressed), for: .touchUpInside)
        
        let allStackButtons = [linear, easeIn, easeOut, easeInEaseOut ]
        return allStackButtons
    }
    
    private func imageSV() -> [UIImageView] {
        
        //image1
        image1.image = UIImage(named: "image1")
        image1.frame = CGRect(x: 0, y: 0, width: 75, height: 100)
        let aspectRatioConstraint1 = NSLayoutConstraint(item: self.image1,attribute: .height,relatedBy: .equal,toItem: self.image1,attribute: .width,multiplier: (2.0 / 1.0),constant: 0)
        self.image1.addConstraint(aspectRatioConstraint1)
        image1.alpha = 1
        //image2
        image2.image = UIImage(named: "image2")
        image2.frame = CGRect(x: 0, y: 0, width: 75, height: 100)
        let aspectRatioConstraint2 = NSLayoutConstraint(item: self.image2,attribute: .height,relatedBy: .equal,toItem: self.image2,attribute: .width,multiplier: (2.0 / 1.0),constant: 0)
        self.image2.addConstraint(aspectRatioConstraint2)
        image2.alpha = 1
        //image3
        image3.image = UIImage(named: "image1")
        image3.frame = CGRect(x: 0, y: 0, width: 75, height: 100)
        let aspectRatioConstraint3 = NSLayoutConstraint(item: self.image3,attribute: .height,relatedBy: .equal,toItem: self.image3,attribute: .width,multiplier: (2.0 / 1.0),constant: 0)
        self.image3.addConstraint(aspectRatioConstraint3)
        image3.alpha = 1
        //image4
        image4.image = UIImage(named: "image2")
        image4.frame = CGRect(x: 0, y: 0, width: 75, height: 100)
        image4.alpha = 1
        let aspectRatioConstraint4 = NSLayoutConstraint(item: self.image4,attribute: .height,relatedBy: .equal,toItem: self.image4,attribute: .width,multiplier: (2.0 / 1.0),constant: 0)
        self.image4.addConstraint(aspectRatioConstraint4)
        let allImages = [image1,image2,image3,image4]
        return allImages
    }
    
    
    private func bottomButtonSV() -> [UIButton] {
        //resetButton
        resetButton.setTitle("Reset", for: .normal)
        resetButton.setTitleColor(.systemPink, for: .normal)
        resetButton.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        resetButton.layer.cornerRadius = 5.0
        resetButton.addTarget(self, action: #selector(resetButtonPressed), for: .touchUpInside)
        //animateButton
        animateButton.setTitle("Animate", for: .normal)
        animateButton.setTitleColor(.systemPink, for: .normal)
        animateButton.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        animateButton.layer.cornerRadius = 5.0
        animateButton.addTarget(self, action: #selector(animateButtonPressed), for: .touchUpInside)
        
        let allButtons = [resetButton, animateButton]
        return allButtons
    }
    
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        constraintAnimationSV()
        constraintBottomSV()
        constraintImageSV()
        
    }
    
    
    //constraints
    private func constraintAnimationSV() {
        addSubview(animationButtonStack)
        animationButtonStack.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            animationButtonStack.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            animationButtonStack.heightAnchor.constraint(equalToConstant: 60),
            animationButtonStack.leadingAnchor.constraint(equalTo:safeAreaLayoutGuide.leadingAnchor, constant: 20),
            animationButtonStack.trailingAnchor.constraint(equalTo:safeAreaLayoutGuide.trailingAnchor, constant: -20)
        ])
    }
    
    private func constraintImageSV() {
        addSubview(imageStack)
        imageStack.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageStack.topAnchor.constraint(equalTo: animationButtonStack.bottomAnchor, constant: 30),
            imageStack.heightAnchor.constraint(equalToConstant: 130),
            imageStack.leadingAnchor.constraint(equalTo:safeAreaLayoutGuide.leadingAnchor, constant: 20),
            imageStack.trailingAnchor.constraint(equalTo:safeAreaLayoutGuide.trailingAnchor, constant: -20)
        ])
    }
    
    private func constraintBottomSV() {
        addSubview(bottomButtonStack)
        bottomButtonStack.spacing = 10
        bottomButtonStack.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            bottomButtonStack.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 25),
            bottomButtonStack.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -25),
            bottomButtonStack.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
        
        
    }
    
    
    
    
    
    // @objc funcs
    
    @objc private func linearButtonPressed() {
        if image1.alpha == 1 {
            image1.alpha = 0
        } else {
            image1.alpha = 1
        }
    }
    
    @objc private func easeInButtonPressed() {
        if image2.alpha == 1 {
            image2.alpha = 0
        } else {
            image2.alpha = 1
        }
    }
    
    @objc private func easeOutButtonPressed() {
        if image3.alpha == 1 {
            image3.alpha = 0
        } else {
            image3.alpha = 1
        }
    }
    
    @objc private func easeInEaseOutButtonPressed() {
        if image4.alpha == 1 {
            image4.alpha = 0
        } else {
            image4.alpha = 1
        }
    }
    
    @objc private func animateButtonPressed() {
       UIView.animate(withDuration: 1.0, delay: 0.0, options: [.curveLinear], animations: {
            self.image1.transform = CGAffineTransform(translationX: 0, y: 475)
        }, completion: { (done) in
            if done == true{
                self.image1.image = UIImage(named: "image1-2")
            }
        })
        
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [.curveEaseOut], animations: {
            self.image2.transform = CGAffineTransform(translationX: 0, y: 475)
        }, completion: { (done) in
            if done == true{
                self.image2.image = UIImage(named: "image2-2")
            }
        })
        
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [.curveEaseIn], animations: {
            self.image3.transform = CGAffineTransform(translationX: 0, y: 475)
        }, completion: { (done) in
            if done == true{
                self.image3.image = UIImage(named: "image1-2")
            }
        })
        
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [.curveEaseInOut], animations: {
            self.image4.transform = CGAffineTransform(translationX: 0, y: 475)
        }, completion: { (done) in
            if done == true{
                self.image4.image = UIImage(named: "image2-2")
            }
        })
    }

    @objc private func resetButtonPressed() {
           UIView.animate(withDuration: 1.0, delay: 0.0, options: [.curveLinear], animations: {
               self.image1.transform = CGAffineTransform(translationX: 0, y: 0)
           }, completion: nil)
           UIView.animate(withDuration: 1.0, delay: 0.0, options: [.curveLinear], animations: {
               self.image2.transform = CGAffineTransform(translationX: 0, y: 0)
           }, completion: nil)
           UIView.animate(withDuration: 1.0, delay: 0.0, options: [.curveLinear], animations: {
               self.image3.transform = CGAffineTransform(translationX: 0, y: 0)
           }, completion: nil)
           UIView.animate(withDuration: 1.0, delay: 0.0, options: [.curveLinear], animations: {
               self.image4.transform = CGAffineTransform(translationX: 0, y: -0)
           }, completion: nil)
        
        image1.image = UIImage(named: "image1")
        image2.image = UIImage(named: "image2")
        image3.image = UIImage(named: "image1")
        image4.image = UIImage(named: "image2")
       }

}
