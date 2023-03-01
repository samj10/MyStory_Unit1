import UIKit

class ViewController: UIViewController {
    
    let About_Me = luffy_struct(name: "Who is Luffy?", image: UIImage(named:"Image 1")!, information: "Luffy is a pirate in an animated show called One Piece. He is the main character and his goal is to be the Pirate King")
    
    let My_Weakness = luffy_struct(name: "What is my Weakness?", image: UIImage(named:"Image 2")!, information: "Luffy's main weakness is that since he at a devil fruit he cannot swim in the ocean. If he ever falls in water he cannot do anything and he drowns so thats why he has a crew to save him!")
    
    let My_Crew = luffy_struct(name: "Who is part of my crew?", image: UIImage(named:"Image 3")!, information: "Luffy has 10 members that are his crew members who all have different roles in the group. ")
    
    var luffy_array: [luffy_struct] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        luffy_array = [About_Me, My_Weakness, My_Crew]
        
       
    }
    
    @IBAction func AboutMe(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailSegue",
           let tappedView = sender as? UIView,
           let detailViewController = segue.destination as? DetailViewController {
            if tappedView.tag == 0 {
                detailViewController.luffy_struct = luffy_array[0]
                print("tapped 1")
            } else if tappedView.tag == 1 {
                detailViewController.luffy_struct = luffy_array[1]
            } else if tappedView.tag == 2 {
                detailViewController.luffy_struct = luffy_array[2]
            } else {
                print("nothing was tapped, please check your selection.")
            }
        }
    }
}
