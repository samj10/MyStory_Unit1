import UIKit

class DetailViewController: UIViewController {
    
    var luffy_struct: luffy_struct?
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let luffy_struct = luffy_struct {
            print(luffy_struct.name)
            
            ImageView.image = luffy_struct.image
             NameLabel.text = luffy_struct.name
             InformationLabel.text = luffy_struct.information
            
        } else {
            print("Error: luffy_struct is nil")
        }
    }
    
    @IBOutlet weak var ImageView: UIImageView!
    
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var InformationLabel: UILabel!
    
}
