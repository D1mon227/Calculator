//
//  ViewController.swift
//  Calculator
//
//  Created by Dmitry Medvedev on 04.04.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .black
        addViews()
        addConstraints()
    }
    
    private lazy var topView: UIView = {
        let element = UIView()
        return element
    }()
    
    private lazy var label: UILabel = {
        let element = UILabel()
        element.text = "0"
        element.font = UIFont.systemFont(ofSize: 50)
        element.textColor = .white
        element.backgroundColor = .black
        element.textAlignment = .right
        return element
    }()
    
    private lazy var persentButton: UIButton = {
        let element = UIButton()
        element.backgroundColor = .darkGray
        element.setTitle("%", for: .normal)
        element.setTitleColor(.white, for: .normal)
        element.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        return element
    }()
    
    private lazy var plusMinesButton: UIButton = {
        let element = UIButton()
        element.backgroundColor = .darkGray
        element.setTitle("+/-", for: .normal)
        element.setTitleColor(.white, for: .normal)
        element.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        return element
    }()
    
    private lazy var acButton: UIButton = {
        let element = UIButton()
        element.backgroundColor = .darkGray
        element.setTitle("AC", for: .normal)
        element.setTitleColor(.white, for: .normal)
        element.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        return element
    }()
    
    private lazy var splitButton: UIButton = {
        let element = UIButton()
        element.backgroundColor = .orange
        element.setTitle("÷", for: .normal)
        element.setTitleColor(.white, for: .normal)
        element.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        return element
    }()
    
    private lazy var sevenButton: UIButton = {
        let element = UIButton()
        element.backgroundColor = .systemBlue
        element.setTitle("7", for: .normal)
        element.setTitleColor(.white, for: .normal)
        element.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        return element
    }()
    
    private lazy var eightButton: UIButton = {
        let element = UIButton()
        element.backgroundColor = .systemBlue
        element.setTitle("8", for: .normal)
        element.setTitleColor(.white, for: .normal)
        element.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        return element
    }()
    
    private lazy var nineButton: UIButton = {
        let element = UIButton()
        element.backgroundColor = .systemBlue
        element.setTitle("9", for: .normal)
        element.setTitleColor(.white, for: .normal)
        element.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        return element
    }()
    
    private lazy var multiplyButton: UIButton = {
        let element = UIButton()
        element.backgroundColor = .orange
        element.setTitle("×", for: .normal)
        element.setTitleColor(.white, for: .normal)
        element.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        return element
    }()
    
    private lazy var fourButton: UIButton = {
        let element = UIButton()
        element.backgroundColor = .systemBlue
        element.setTitle("4", for: .normal)
        element.setTitleColor(.white, for: .normal)
        element.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        return element
    }()
    
    private lazy var fiveButton: UIButton = {
        let element = UIButton()
        element.backgroundColor = .systemBlue
        element.setTitle("5", for: .normal)
        element.setTitleColor(.white, for: .normal)
        element.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        return element
    }()
    
    private lazy var sixButton: UIButton = {
        let element = UIButton()
        element.backgroundColor = .systemBlue
        element.setTitle("6", for: .normal)
        element.setTitleColor(.white, for: .normal)
        element.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        return element
    }()
    
    private lazy var minesButton: UIButton = {
        let element = UIButton()
        element.backgroundColor = .orange
        element.setTitle("-", for: .normal)
        element.setTitleColor(.white, for: .normal)
        element.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        return element
    }()
    
    private lazy var oneButton: UIButton = {
        let element = UIButton()
        element.backgroundColor = .systemBlue
        element.setTitle("1", for: .normal)
        element.setTitleColor(.white, for: .normal)
        element.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        return element
    }()
    
    private lazy var twoButton: UIButton = {
        let element = UIButton()
        element.backgroundColor = .systemBlue
        element.setTitle("2", for: .normal)
        element.setTitleColor(.white, for: .normal)
        element.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        return element
    }()
    
    private lazy var threeButton: UIButton = {
        let element = UIButton()
        element.backgroundColor = .systemBlue
        element.setTitle("3", for: .normal)
        element.setTitleColor(.white, for: .normal)
        element.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        return element
    }()
    
    private lazy var plusButton: UIButton = {
        let element = UIButton()
        element.backgroundColor = .orange
        element.setTitle("+", for: .normal)
        element.setTitleColor(.white, for: .normal)
        element.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        return element
    }()
    
    private lazy var zeroButton: UIButton = {
        let element = UIButton()
        element.backgroundColor = .systemBlue
        element.setTitle("0", for: .normal)
        element.setTitleColor(.white, for: .normal)
        element.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        return element
    }()
    
    private lazy var dotButton: UIButton = {
        let element = UIButton()
        element.backgroundColor = .systemBlue
        element.setTitle(".", for: .normal)
        element.setTitleColor(.white, for: .normal)
        element.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        return element
    }()
    
    private lazy var equalButton: UIButton = {
        let element = UIButton()
        element.backgroundColor = .orange
        element.setTitle("=", for: .normal)
        element.setTitleColor(.white, for: .normal)
        element.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        return element
    }()
    
    private lazy var firstHorizontalStack: UIStackView = {
        let element = UIStackView()
        element.axis = .horizontal
        element.distribution = .fillEqually
        element.spacing = 1
        return element
    }()
    
    private lazy var secondHorizontalStack: UIStackView = {
        let element = UIStackView()
        element.axis = .horizontal
        element.distribution = .fillEqually
        element.spacing = 1
        return element
    }()
    
    private lazy var thirdHorizontalStack: UIStackView = {
        let element = UIStackView()
        element.axis = .horizontal
        element.distribution = .fillEqually
        element.spacing = 1
        return element
    }()
    
    private lazy var fourthHorizontalStack: UIStackView = {
        let element = UIStackView()
        element.axis = .horizontal
        element.distribution = .fillEqually
        element.spacing = 1
        return element
    }()
    
    private lazy var fifthHorizontalStack: UIStackView = {
        let element = UIStackView()
        element.axis = .horizontal
        element.distribution = .fillEqually
        element.spacing = 1
        return element
    }()
    
    private lazy var sixthHorizontalStack: UIStackView = {
        let element = UIStackView()
        element.axis = .horizontal
        element.distribution = .fillEqually
        element.spacing = 1
        return element
    }()
    
    private lazy var verticalStack: UIStackView = {
        let element = UIStackView()
        element.axis = .vertical
        element.distribution = .fillEqually
        element.spacing = 1
        return element
    }()
    
    private func addViews() {
        
        view.addSubview(verticalStack)
        
        topView.addSubview(label)
        
        firstHorizontalStack.addArrangedSubview(persentButton)
        firstHorizontalStack.addArrangedSubview(plusMinesButton)
        firstHorizontalStack.addArrangedSubview(acButton)
        firstHorizontalStack.addArrangedSubview(splitButton)
        
        secondHorizontalStack.addArrangedSubview(sevenButton)
        secondHorizontalStack.addArrangedSubview(eightButton)
        secondHorizontalStack.addArrangedSubview(nineButton)
        secondHorizontalStack.addArrangedSubview(multiplyButton)
        
        thirdHorizontalStack.addArrangedSubview(fourButton)
        thirdHorizontalStack.addArrangedSubview(fiveButton)
        thirdHorizontalStack.addArrangedSubview(sixButton)
        thirdHorizontalStack.addArrangedSubview(minesButton)
        
        fourthHorizontalStack.addArrangedSubview(oneButton)
        fourthHorizontalStack.addArrangedSubview(twoButton)
        fourthHorizontalStack.addArrangedSubview(threeButton)
        fourthHorizontalStack.addArrangedSubview(plusButton)
        
        fifthHorizontalStack.addArrangedSubview(zeroButton)
        fifthHorizontalStack.addArrangedSubview(sixthHorizontalStack)
        
        sixthHorizontalStack.addArrangedSubview(dotButton)
        sixthHorizontalStack.addArrangedSubview(equalButton)
        
        verticalStack.addArrangedSubview(topView)
        verticalStack.addArrangedSubview(firstHorizontalStack)
        verticalStack.addArrangedSubview(secondHorizontalStack)
        verticalStack.addArrangedSubview(thirdHorizontalStack)
        verticalStack.addArrangedSubview(fourthHorizontalStack)
        verticalStack.addArrangedSubview(fifthHorizontalStack)
    }
    
    private func addConstraints() {
        verticalStack.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview()
            make.top.bottom.equalTo(view.safeAreaLayoutGuide)
        }
        
        label.snp.makeConstraints { make in
            make.centerY.equalTo(topView.snp.centerY)
            make.leading.trailing.equalTo(topView).inset(20)
        }
    }
}

