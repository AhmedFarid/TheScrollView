import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollview: UIScrollView!
    
    var images = [UIImageView]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
     
    }
    override func viewDidAppear(_ animated: Bool) {
        
        var contantWidth: CGFloat = 0.0
        
        
        let scrollWidth = scrollview.frame.size.width
        
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            newX = scrollWidth / 2 + scrollWidth * CGFloat(x)
            contantWidth += newX
            scrollview.addSubview(imageView)
            imageView.frame = CGRect(x: newX - 75, y: (scrollview.frame.size.height / 2) - 75, width: 150, height: 150)
        }
        
        //scrollview.backgroundColor = UIColor.purple
        
        scrollview.clipsToBounds = false
        
        scrollview.contentSize = CGSize(width: contantWidth, height: view.frame.size.height)
    }

}
