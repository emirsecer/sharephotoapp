import UIKit
import Firebase
import FirebaseAuth
import FirebaseCore


class feedcell: UITableViewCell {
    @IBOutlet weak var yorumtext: UILabel!
    @IBOutlet weak var cellimage: UIImageView!
    @IBOutlet weak var epostatext: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
}

