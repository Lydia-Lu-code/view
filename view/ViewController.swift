//
//  ViewController.swift
//  view
//
//  Created by 維衣 on 2020/7/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var numaberBtns: [UIButton]!
    @IBOutlet var imageView: [UIImageView]!
    
    var password = ""

    func changeImage(){
        switch password.count-1{
        case 0:
            imageView[0].image = UIImage(named: "icon1.png")
            imageView[1].image = UIImage(named: "icon5.png")
            imageView[2].image = UIImage(named: "icon5.png")
            imageView[3].image = UIImage(named: "icon5.png")
            
        case 1:
            imageView[0].image = UIImage(named: "icon1.png")
            imageView[1].image = UIImage(named: "icon2.png")
            imageView[2].image = UIImage(named: "icon5.png")
            imageView[3].image = UIImage(named: "icon5.png")
            
        case 2:
            imageView[0].image = UIImage(named: "icon1.png")
            imageView[1].image = UIImage(named: "icon2.png")
            imageView[2].image = UIImage(named: "icon3.png")
            imageView[3].image = UIImage(named: "icon5.png")
            
        case 3:
            imageView[0].image = UIImage(named: "icon1.png")
            imageView[1].image = UIImage(named: "icon2.png")
            imageView[2].image = UIImage(named: "icon3.png")
            imageView[3].image = UIImage(named: "icon4.png")
            
        default:
            clearImage()
            
        }
    }
    
    func clearImage(){
        imageView[0].image = UIImage(named: "icon5.png")
        imageView[1].image = UIImage(named: "icon5.png")
        imageView[2].image = UIImage(named: "icon5.png")
        imageView[3].image = UIImage(named: "icon5.png")
    }
        

        func clearPassword(){
            password = ""
            changeImage()
            }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        clearImage()
    }
    
    @IBAction func Buttons(_ sender: UIButton) {

        if let inputPassword = sender.titleLabel?.text {
            password.append(inputPassword)
            print("password.count=\(password.count)")
            print("inputPassword= \(inputPassword)")
            if password.count < 4{
                
                changeImage()
                
            }else if password.count == 4{
                changeImage()
                if password == "1225"{
                    let alert = UIAlertController(title: "解鎖成功!", message: "ＹＡ!", preferredStyle: .alert)
                    let action = UIAlertAction(title: "OK!", style: .cancel, handler: nil)
                        alert.addAction(action)
                        present(alert, animated: false, completion: clearPassword)
                }else{
                    let alert = UIAlertController(title: "解鎖失敗!", message: "請再試一次!", preferredStyle: .alert)
                    let action = UIAlertAction(title: "Try again", style: .cancel, handler: nil)
                        alert.addAction(action)
                        present(alert, animated: false, completion: clearPassword)
                    }
            }
        }
    }
    
    @IBAction func clearButton(_ sender: UIButton) {
        password = ""
        clearImage()
    }
}
