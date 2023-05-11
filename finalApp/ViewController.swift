import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tpVw: UIView!
    @IBOutlet weak var tpImge: UIImageView!
    
    @IBOutlet weak var btmVw: UIView!
    @IBOutlet weak var btmImge: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        transformImages1()
        transformImages2()
    
    }
    
    func transformImages1(){
        var rAndPTransform = CATransform3DIdentity
       
        rAndPTransform.m34 = 1.0 / -500
        
        self.tpVw.layer.transform = rAndPTransform
        UIGraphicsBeginImageContextWithOptions(tpVw.bounds.size, false, 0.0)
        
        view.drawHierarchy(in: tpImge.bounds, afterScreenUpdates: true)
        
        UIGraphicsEndPDFContext()
        
    }
    
    func transformImages2(){
        var rAndPTransform = CATransform3DIdentity
        
        rAndPTransform.m34 = 1.0 / -500
        
        self.btmVw.layer.transform = rAndPTransform
        UIGraphicsBeginImageContextWithOptions(btmVw.bounds.size, false, 0.0)
        
        view.drawHierarchy(in: btmImge.bounds, afterScreenUpdates: true)
        
        UIGraphicsEndPDFContext()
        
    }
    
}


