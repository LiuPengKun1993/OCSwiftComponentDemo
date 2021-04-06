//
//  OCSwiftComponentBController.swift
//  OCSwiftComponentA
//
//  Created by PaulLi on 2021/4/6.
//

import UIKit

public class OCSwiftComponentBController: UIViewController {

    public override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Swift 控制器"
        view.backgroundColor = UIColor.cyan
        addSubViews()
    }
    
    func addSubViews() {
        let label = UILabel.init(frame: CGRect(x: 0, y: 0, width: 200, height: 30))
        label.text = "点击跳转 OC 控制器"
        label.textAlignment = NSTextAlignment.center
        view.addSubview(label)
        label.center = view.center
    }
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        let a = OCSwiftComponentAController.init()
        self.navigationController?.pushViewController(a, animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
