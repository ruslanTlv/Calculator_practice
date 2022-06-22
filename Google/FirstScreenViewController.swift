//
//  FirstScreenViewController.swift
//  Google
//
//  Created by Ruslan on 20/05/22.
//

import UIKit
import SnapKit

class FirstScreenViewController: UIViewController {
    
    var isNewValue = true
    var operation: String? = nil
    var previousOperation: String? = nil
    var result: Int = 0
    var newValue: Int = 0
    
    
    var enteredNumberLabel: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.numberOfLines = 0
        label.textAlignment = .right
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 90, weight: .light)
        return label
    }()
    
    lazy var enteredNumberView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.addSubview(enteredNumberLabel)
        return view
    }()

    var buttonAC: UIButton = {
        let button = UIButton()
        button.setTitle("AC", for: .normal)
        button.layer.backgroundColor = UIColor.lightGray.cgColor
        button.layer.cornerRadius = 35
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .light)
        button.setTitleColor(UIColor.black, for: .normal)
        button.setTitleColor(UIColor.white, for: .highlighted)
        return button
    }()

    var buttonPlusMinus: UIButton = {
        let button = UIButton()
        button.setTitle("+/-", for: .normal)
        button.layer.backgroundColor = UIColor.lightGray.cgColor
        button.layer.cornerRadius = 35
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .light)
        button.setTitleColor(UIColor.black, for: .normal)
        button.setTitleColor(UIColor.white, for: .highlighted)
        return button
    }()

    var buttonPersent: UIButton = {
        let button = UIButton()
        button.setTitle("%", for: .normal)
        button.layer.backgroundColor = UIColor.lightGray.cgColor
        button.layer.cornerRadius = 35
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .light)
        button.setTitleColor(UIColor.black, for: .normal)
        button.setTitleColor(UIColor.white, for: .highlighted)
        return button
    }()

    var buttonDivide: UIButton = {
        let button = UIButton()
        button.setImage(UIImage.init(systemName: "divide"), for: .normal)
        button.imageView?.tintColor = .white
        button.imageView?.snp.makeConstraints({ make in
            make.width.equalTo(25)
            make.height.equalTo(25)
        })
        button.layer.backgroundColor = UIColor.orange.cgColor
        button.layer.cornerRadius = 35
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        button.setTitleColor(UIColor.white, for: .normal)
        
        return button
    }()

    lazy var buttonsView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.addSubview(buttonAC)
        view.addSubview(buttonPlusMinus)
        view.addSubview(buttonPersent)
        view.addSubview(buttonDivide)
        return view
    }()
    
    
    var buttonSeven: UIButton = {
        let button = UIButton()
        button.setTitle("7", for: .normal)
        button.layer.backgroundColor = UIColor.darkGray.cgColor
        button.layer.cornerRadius = 35
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .medium)
        button.setTitleColor(UIColor.white, for: .normal)
        button.setTitleColor(UIColor.black, for: .highlighted)
        return button
    }()

    var buttonEight: UIButton = {
        let button = UIButton()
        button.setTitle("8", for: .normal)
        button.layer.backgroundColor = UIColor.darkGray.cgColor
        button.layer.cornerRadius = 35
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .medium)
        button.setTitleColor(UIColor.white, for: .normal)
        button.setTitleColor(UIColor.black, for: .highlighted)
        return button
    }()

    var buttonNine: UIButton = {
        let button = UIButton()
        button.setTitle("9", for: .normal)
        button.layer.backgroundColor = UIColor.darkGray.cgColor
        button.layer.cornerRadius = 35
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .medium)
        button.setTitleColor(UIColor.white, for: .normal)
        button.setTitleColor(UIColor.black, for: .highlighted)
        return button
    }()

    var buttonMultiply: UIButton = {
        let button = UIButton()
        button.setImage(UIImage.init(systemName: "multiply"), for: .normal)
        button.imageView?.snp.makeConstraints({ make in
            make.width.equalTo(20)
            make.height.equalTo(25)
        })
        button.imageView?.tintColor = .white
        button.layer.backgroundColor = UIColor.orange.cgColor
        button.layer.cornerRadius = 35
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35, weight: .medium)
        button.setTitleColor(UIColor.white, for: .normal)
        button.setTitleColor(UIColor.black, for: .highlighted)
        return button
    }()

    lazy var buttons789View: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.addSubview(buttonSeven)
        view.addSubview(buttonEight)
        view.addSubview(buttonNine)
        view.addSubview(buttonMultiply)
        return view
    }()
    
    var buttonFour: UIButton = {
        let button = UIButton()
        button.setTitle("4", for: .normal)
        button.layer.backgroundColor = UIColor.darkGray.cgColor
        button.layer.cornerRadius = 35
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .medium)
        button.setTitleColor(UIColor.white, for: .normal)
        button.setTitleColor(UIColor.black, for: .highlighted)
        return button
    }()

    var buttonFive: UIButton = {
        let button = UIButton()
        button.setTitle("5", for: .normal)
        button.layer.backgroundColor = UIColor.darkGray.cgColor
        button.layer.cornerRadius = 35
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .medium)
        button.setTitleColor(UIColor.white, for: .normal)
        button.setTitleColor(UIColor.black, for: .highlighted)
        return button
    }()

    var buttonSix: UIButton = {
        let button = UIButton()
        button.setTitle("6", for: .normal)
        button.layer.backgroundColor = UIColor.darkGray.cgColor
        button.layer.cornerRadius = 35
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .medium)
        button.setTitleColor(UIColor.white, for: .normal)
        button.setTitleColor(UIColor.black, for: .highlighted)
        return button
    }()

    var buttonMinus: UIButton = {
        let button = UIButton()
        button.setImage(UIImage.init(systemName: "minus"), for: .normal)
        button.imageView?.snp.makeConstraints({ make in
            make.width.equalTo(25)
            make.height.equalTo(25)
        })
        button.imageView?.tintColor = .white
        button.layer.backgroundColor = UIColor.orange.cgColor
        button.layer.cornerRadius = 35
        button.setTitleColor(UIColor.white, for: .normal)
        button.setTitleColor(UIColor.black, for: .highlighted)
        return button
    }()

    lazy var buttons456View: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.addSubview(buttonFour)
        view.addSubview(buttonFive)
        view.addSubview(buttonSix)
        view.addSubview(buttonMinus)
        return view
    }()
    
    var buttonOne: UIButton = {
        let button = UIButton()
        button.setTitle("1", for: .normal)
        button.layer.backgroundColor = UIColor.darkGray.cgColor
        button.layer.cornerRadius = 35
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .medium)
        button.setTitleColor(UIColor.white, for: .normal)
        button.setTitleColor(UIColor.black, for: .highlighted)
        return button
    }()

    var buttonTwo: UIButton = {
        let button = UIButton()
        button.setTitle("2", for: .normal)
        button.layer.backgroundColor = UIColor.darkGray.cgColor
        button.layer.cornerRadius = 35
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .medium)
        button.setTitleColor(UIColor.white, for: .normal)
        button.setTitleColor(UIColor.black, for: .highlighted)
        return button
    }()

    var buttonThree: UIButton = {
        let button = UIButton()
        button.setTitle("3", for: .normal)
        button.layer.backgroundColor = UIColor.darkGray.cgColor
        button.layer.cornerRadius = 35
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .medium)
        button.setTitleColor(UIColor.white, for: .normal)
        button.setTitleColor(UIColor.black, for: .highlighted)
        return button
    }()

    var buttonPlus: UIButton = {
        let button = UIButton()
        button.setTitle("+", for: .normal)
        button.layer.backgroundColor = UIColor.orange.cgColor
        button.layer.cornerRadius = 35
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .medium)
        button.setTitleColor(UIColor.white, for: .normal)
        button.setTitleColor(UIColor.black, for: .highlighted)
        return button
    }()

    lazy var buttons123View: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.addSubview(buttonOne)
        view.addSubview(buttonTwo)
        view.addSubview(buttonThree)
        view.addSubview(buttonPlus)
        return view
    }()

    
    var buttonZero: UIButton = {
        let button = UIButton()
        button.setTitle("0", for: .normal)
        button.layer.backgroundColor = UIColor.darkGray.cgColor
        button.layer.cornerRadius = 35
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .medium)
        button.setTitleColor(UIColor.white, for: .normal)
        button.setTitleColor(UIColor.black, for: .highlighted)
        return button
    }()

    var buttonPoint: UIButton = {
        let button = UIButton()
        button.setTitle(",", for: .normal)
        button.layer.backgroundColor = UIColor.darkGray.cgColor
        button.layer.cornerRadius = 35
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .medium)
        button.setTitleColor(UIColor.white, for: .normal)
        button.setTitleColor(UIColor.black, for: .highlighted)
        return button
    }()

    var buttonEqual: UIButton = {
        let button = UIButton()
        button.setTitle("=", for: .normal)
        button.layer.backgroundColor = UIColor.orange.cgColor
        button.layer.cornerRadius = 35
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .medium)
        button.setTitleColor(UIColor.white, for: .normal)
        button.setTitleColor(UIColor.black, for: .highlighted)
        return button
    }()

    lazy var buttons0PointEqualView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.addSubview(buttonZero)
        view.addSubview(buttonPoint)
        view.addSubview(buttonEqual)
        return view
    }()



    lazy var allStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [buttonsView, buttons789View, buttons456View, buttons123View, buttons0PointEqualView])
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        return stackView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        view.addSubview(enteredNumberView)
        view.addSubview(allStackView)
        allEdits()
    }
    
    func allEdits() {
        enteredNumberView.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(50)
            make.height.equalTo(300)
            make.width.equalToSuperview()
        }
        
        enteredNumberLabel.snp.makeConstraints { make in
            make.bottom.equalTo(enteredNumberView).inset(5)
            make.right.equalTo(enteredNumberView).inset(30)
            make.width.equalTo(350)
        }
        
        
        
        allStackView.snp.makeConstraints { make in
            make.width.greaterThanOrEqualToSuperview()
            make.height.greaterThanOrEqualTo(230)
            make.top.equalTo(enteredNumberView.snp_bottomMargin).inset(-8)
            make.centerX.equalToSuperview()
        }
        
        buttonsView.snp.makeConstraints { make in
            make.width.greaterThanOrEqualTo(allStackView)
            make.height.greaterThanOrEqualTo(70)
        }
        
        buttonAC.snp.makeConstraints { make in
            make.height.equalTo(buttonsView)
            make.width.greaterThanOrEqualTo(70)
            make.top.bottom.equalTo(buttonsView).inset(0)
            make.left.greaterThanOrEqualTo(buttonsView).inset(20)
        }
        
        buttonPlusMinus.snp.makeConstraints { make in
            make.height.greaterThanOrEqualTo(buttonsView)
            make.width.greaterThanOrEqualTo(70)
            make.top.bottom.equalTo(buttonsView).inset(0)
            make.left.greaterThanOrEqualTo(buttonAC.snp_rightMargin).inset(-25)
        }
        
        buttonPersent.snp.makeConstraints { make in
            make.height.equalTo(buttonsView)
            make.width.equalTo(70)
            make.top.bottom.equalTo(buttonsView).inset(0)
            make.left.greaterThanOrEqualTo(buttonPlusMinus.snp_rightMargin).inset(-25)
        }
        
        buttonDivide.snp.makeConstraints { make in
            make.height.equalTo(buttonsView)
            make.width.equalTo(70)
            make.top.bottom.equalTo(buttonsView).inset(0)
            make.left.greaterThanOrEqualTo(buttonPersent.snp_rightMargin).inset(-25)
        }
        
        
        buttons789View.snp.makeConstraints { make in
            make.width.equalTo(allStackView)
            make.height.equalTo(70)
        }
        
        buttonSeven.snp.makeConstraints { make in
            make.height.equalTo(buttons789View)
            make.width.greaterThanOrEqualTo(70)
            make.top.bottom.equalTo(buttons789View).inset(0)
            make.left.equalTo(buttons789View).inset(20)
        }
        
        buttonEight.snp.makeConstraints { make in
            make.height.equalTo(buttons789View)
            make.width.equalTo(70)
            make.top.bottom.equalTo(buttons789View).inset(0)
            make.left.equalTo(buttonSeven.snp_rightMargin).inset(-25)
        }
        
        buttonNine.snp.makeConstraints { make in
            make.height.equalTo(buttons789View)
            make.width.equalTo(70)
            make.top.bottom.equalTo(buttons789View).inset(0)
            make.left.equalTo(buttonEight.snp_rightMargin).inset(-25)
        }
        
        buttonMultiply.snp.makeConstraints { make in
            make.height.equalTo(buttons789View)
            make.width.equalTo(70)
            make.top.bottom.equalTo(buttons789View).inset(0)
            make.left.equalTo(buttonNine.snp_rightMargin).inset(-25)
        }
        
        
        buttons456View.snp.makeConstraints { make in
            make.width.equalTo(allStackView)
            make.height.equalTo(70)
        }
        
        buttonFour.snp.makeConstraints { make in
            make.height.equalTo(buttons456View)
            make.width.greaterThanOrEqualTo(70)
            make.top.bottom.equalTo(buttons456View).inset(0)
            make.left.equalTo(buttons456View).inset(20)
        }
        
        buttonFive.snp.makeConstraints { make in
            make.height.equalTo(buttons456View)
            make.width.equalTo(70)
            make.top.bottom.equalTo(buttons456View).inset(0)
            make.left.equalTo(buttonFour.snp_rightMargin).inset(-25)
        }
        
        buttonSix.snp.makeConstraints { make in
            make.height.equalTo(buttons456View)
            make.width.equalTo(70)
            make.top.bottom.equalTo(buttons456View).inset(0)
            make.left.equalTo(buttonFive.snp_rightMargin).inset(-25)
        }
        
        buttonMinus.snp.makeConstraints { make in
            make.height.equalTo(buttons456View)
            make.width.equalTo(70)
            make.top.bottom.equalTo(buttons456View).inset(0)
            make.left.equalTo(buttonSix.snp_rightMargin).inset(-25)
        }
        
        buttons123View.snp.makeConstraints { make in
            make.width.equalTo(allStackView)
            make.height.equalTo(70)
        }
        
        buttonOne.snp.makeConstraints { make in
            make.height.equalTo(buttons123View)
            make.width.greaterThanOrEqualTo(70)
            make.top.bottom.equalTo(buttons123View).inset(0)
            make.left.equalTo(buttons123View).inset(20)
        }
        
        buttonTwo.snp.makeConstraints { make in
            make.height.equalTo(buttons123View)
            make.width.equalTo(70)
            make.top.bottom.equalTo(buttons123View).inset(0)
            make.left.equalTo(buttonOne.snp_rightMargin).inset(-25)
        }
        
        buttonThree.snp.makeConstraints { make in
            make.height.equalTo(buttons123View)
            make.width.equalTo(70)
            make.top.bottom.equalTo(buttons123View).inset(0)
            make.left.equalTo(buttonTwo.snp_rightMargin).inset(-25)
        }
        
        buttonPlus.snp.makeConstraints { make in
            make.height.equalTo(buttons123View)
            make.width.equalTo(70)
            make.top.bottom.equalTo(buttons123View).inset(0)
            make.left.equalTo(buttonThree.snp_rightMargin).inset(-25)
        }
        
        
        buttons0PointEqualView.snp.makeConstraints { make in
            make.width.equalTo(allStackView)
            make.height.equalTo(70)
        }
        
        buttonZero.snp.makeConstraints { make in
            make.height.equalTo(buttons0PointEqualView)
            make.width.greaterThanOrEqualTo(157)
            make.top.bottom.equalTo(buttons0PointEqualView).inset(0)
            make.left.equalTo(buttons0PointEqualView).inset(20)
        }
        
        buttonPoint.snp.makeConstraints { make in
            make.height.equalTo(buttons0PointEqualView)
            make.width.equalTo(70)
            make.top.bottom.equalTo(buttons0PointEqualView).inset(0)
            make.left.equalTo(buttonZero.snp_rightMargin).inset(-25)
        }
        
        buttonEqual.snp.makeConstraints { make in
            make.height.equalTo(buttons0PointEqualView)
            make.width.equalTo(70)
            make.top.bottom.equalTo(buttons0PointEqualView).inset(0)
            make.left.equalTo(buttonPoint.snp_rightMargin).inset(-25)
        }
        
        
        
        buttonZero.addTarget(self, action: #selector(onZeroTap), for: .touchUpInside)
        
        buttonOne.addTarget(self, action: #selector(onOneTap), for: .touchUpInside)
        
        buttonTwo.addTarget(self, action: #selector(onTwoTap), for: .touchUpInside)
        
        buttonThree.addTarget(self, action: #selector(onThreeTap), for: .touchUpInside)
        
        buttonFour.addTarget(self, action: #selector(onFourTap), for: .touchUpInside)
        
        buttonFive.addTarget(self, action: #selector(onFiveTap), for: .touchUpInside)
        
        buttonSix.addTarget(self, action: #selector(onSixTap), for: .touchUpInside)
        
        buttonSeven.addTarget(self, action: #selector(onSevenTap), for: .touchUpInside)
        
        buttonEight.addTarget(self, action: #selector(onEightTap), for: .touchUpInside)
        
        buttonNine.addTarget(self, action: #selector(onNineTap), for: .touchUpInside)
        
        buttonEqual.addTarget(self, action: #selector(onEqualTap), for: .touchUpInside)
        
        buttonPlus.addTarget(self, action: #selector(onPlusTap), for: .touchUpInside)
        
        buttonMinus.addTarget(self, action: #selector(onMinusTap), for: .touchUpInside)
        
        buttonDivide.addTarget(self, action: #selector(onDivideTap), for: .touchUpInside)
        
        buttonMultiply.addTarget(self, action: #selector(onMultiplyTap), for: .touchUpInside)
        
        buttonAC.addTarget(self, action: #selector(onACTap), for: .touchUpInside)
        
        buttonPoint.addTarget(self, action: #selector(onComaTap), for: .touchUpInside)
    }
    
    func addDigit(_ digit: String) {
        if isNewValue {
            enteredNumberLabel.text = ""
            isNewValue = false
        }
        var digits = enteredNumberLabel.text
        digits?.append(digit)
        enteredNumberLabel.text = digits
    }
    
    func getInteger() -> Int {
        return Int(enteredNumberLabel.text ?? "0") ?? 0
    }
    
    func calculateAddition () {
        guard let operation = operation else {
            return
        }
        
        if previousOperation != operation {
            newValue = getInteger()
        }
        
        if operation == "+" {
            result += newValue
        } else {
            return
        }
        
        previousOperation = operation
        
        enteredNumberLabel.text = "\(result)"
        isNewValue = true
    }
    
    func calculateSubtraction () {
        guard let operation = operation else {
            return
        }
        
        if previousOperation != operation {
            newValue = getInteger()
        }
        
        
        if operation == "-" {
            result -= newValue
        } else {
            return
        }
        
        previousOperation = operation
        
        enteredNumberLabel.text = "\(result)"
        isNewValue = true
    }
    
    func calculateDivision () {
        guard let operation = operation else {
            return
        }
        
        if previousOperation != operation {
            newValue = getInteger()
        }
        
        if operation == "/" {
            result /= newValue
        } else {
            return
        }
        
        previousOperation = operation
        
        enteredNumberLabel.text = "\(result)"
        isNewValue = true
    }
    
    func calculateMultiplication () {
        guard let operation = operation else {
            return
        }
        
        if previousOperation != operation {
            newValue = getInteger()
        }

        if operation == "*" {
            result *= newValue
        } else {
            return
        }
        
        previousOperation = operation
        
        enteredNumberLabel.text = "\(result)"
        isNewValue = true
    }
    
    @objc func onZeroTap() {
        addDigit("0")
        if enteredNumberLabel.text!.count > 6 {
            enteredNumberLabel.font = UIFont.systemFont(ofSize: 50)
        }
    }
    
    @objc func onOneTap() {
        addDigit("1")
        if enteredNumberLabel.text!.count > 6 {
            enteredNumberLabel.font = UIFont.systemFont(ofSize: 50)
        }
    }
    
    @objc func onTwoTap() {
        addDigit("2")
        if enteredNumberLabel.text!.count > 6 {
            enteredNumberLabel.font = UIFont.systemFont(ofSize: 50)
        }
    }
    
    @objc func onThreeTap() {
        addDigit("3")
        if enteredNumberLabel.text!.count > 6 {
            enteredNumberLabel.font = UIFont.systemFont(ofSize: 50)
        }
    }
    
    @objc func onFourTap() {
        addDigit("4")
        if enteredNumberLabel.text!.count > 6 {
            enteredNumberLabel.font = UIFont.systemFont(ofSize: 50)
        }
    }
    
    @objc func onFiveTap() {
        addDigit("5")
        if enteredNumberLabel.text!.count > 6 {
            enteredNumberLabel.font = UIFont.systemFont(ofSize: 50)
        }
    }
    
    @objc func onSixTap() {
        addDigit("6")
        if enteredNumberLabel.text!.count > 6 {
            enteredNumberLabel.font = UIFont.systemFont(ofSize: 50)
        }
    }
    
    @objc func onSevenTap() {
        addDigit("7")
        if enteredNumberLabel.text!.count > 6 {
            enteredNumberLabel.font = UIFont.systemFont(ofSize: 50)
        }
    }
    
    @objc func onEightTap() {
        addDigit("8")
        if enteredNumberLabel.text!.count > 6 {
            enteredNumberLabel.font = UIFont.systemFont(ofSize: 50)
        }
    }
    
    @objc func onNineTap() {
        addDigit("9")
        if enteredNumberLabel.text!.count > 6 {
            enteredNumberLabel.font = UIFont.systemFont(ofSize: 50)
        }
    }
    
    
    
    @objc func onComaTap() {
        addDigit(",")
    }
    
    @objc func onEqualTap() {
        calculateAddition()
        calculateSubtraction()
        calculateDivision()
        calculateMultiplication()
        if enteredNumberLabel.text!.count > 6 {
            enteredNumberLabel.font = UIFont.systemFont(ofSize: 50)
        }
    }
    
    @objc func onPlusTap() {
        operation = "+"
        previousOperation = nil
        isNewValue = true
        result = getInteger()
    }
    
    @objc func onMinusTap() {
        operation = "-"
        previousOperation = nil
        isNewValue = true
        result = getInteger()
    }
    
    @objc func onDivideTap() {
        operation = "/"
        previousOperation = nil
        isNewValue = true
        result = getInteger()
    }
    
    @objc func onMultiplyTap() {
        operation = "*"
        previousOperation = nil
        isNewValue = true
        result = getInteger()
    }
    
    @objc func onACTap() {
        isNewValue = true
        result = 0
        newValue = 0
        operation = nil
        previousOperation = nil
        enteredNumberLabel.text = "0"
        enteredNumberLabel.font = UIFont.systemFont(ofSize: 90, weight: .light)
    }

}
