//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    
    
    let section = UIView()
    let section2 = UIView()
    let expandButton = UIButton()

    override func loadView() {
        let view = UIView()
        view.backgroundColor = .purple
        
        //
        


        
// Barra Top
        
        let barraTop = UIView()
        barraTop.backgroundColor = .blue
        barraTop.frame = CGRect(x: 0, y: 0, width:380 , height: 50)
        

        

// Menu
        let menu = UIView()
        menu.backgroundColor = .yellow
        menu.frame = CGRect(x: 0, y: 729, width: 375 , height: 83)
        
        // Menu Botao1
        let menuBotao1 = UIView()
        menuBotao1.backgroundColor = .red
        menuBotao1.frame = CGRect(x: 0, y: 0, width:187.5 , height: 83)
        
        // Menu Botao2
        let menuBotao2 = UIView()
        menuBotao2.backgroundColor = .orange
        menuBotao2.frame = CGRect(x: 187.5, y: 0, width:187.5 , height: 83)
        
        

        
// Section
        
        section.backgroundColor = .green
        section.frame = CGRect(x: 8, y: 126, width:359 , height: 51)
        section.layer.cornerRadius = 13;
        
        // Label
        
        let label = UILabel()
        label.frame = CGRect(x: 35, y: 14.93, width: 100, height: 20)
        label.backgroundColor = .systemPink
        label.text = "Hello World!"
        label.textColor = .black
        
        // Image
        
        let secaoIcon = UIImageView()
        secaoIcon.contentMode = .scaleToFill
        secaoIcon.frame = CGRect(x: 10, y: 14.93, width: 20, height: 20)
        secaoIcon.image = UIImage(imageLiteralResourceName: "icon.png")
        
        expandButton.frame = CGRect(x: 333.85, y: 15.85, width: 17, height: 17)
        expandButton.setImage(UIImage(imageLiteralResourceName: "icon.png"), for: .normal)
        expandButton.addTarget(self, action: #selector(acaoBotao), for: .touchUpInside)
        
        
// Hierarquias

        view.addSubview(barraTop)
        view.addSubview(menu)
            menu.addSubview(menuBotao1)
            menu.addSubview(menuBotao2)
        view.addSubview(section)
            section.addSubview(label)
            section.addSubview(secaoIcon)
            section.addSubview(expandButton)

        self.view = view
        
    }
 
    @objc func acaoBotao(){
        
        UIView.animate(withDuration: 0.2, delay: 0, options: [.curveEaseOut, .curveEaseIn], animations: {
            
            if self.section.frame.size.height == 51{
                self.section.frame.size = CGSize(width: 359 , height: 244)
                self.expandButton.rotate(angle: 90)
            } else {
                self.section.frame.size = CGSize(width: 359 , height: 51)
                self.expandButton.rotate(angle: -90)
            }
            
            
        })

        
        

    
    }
    
}

// Present the view controller in the Live View window
let viewController = MyViewController()
viewController.preferredContentSize = CGSize(width: 375, height: 812)
PlaygroundPage.current.liveView = viewController

