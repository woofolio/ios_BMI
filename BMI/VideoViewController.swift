//
//  VideoViewController.swift
//  BMI
//
//  Created by wooMac on 2023/09/04.
//

import UIKit
import AVKit

class VideoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func playvideo(_ sender: UIButton) {
        let file:String? = Bundle.main.path(forResource: "BMI", ofType: "mp4")
        Bundle.main.path(forResource: "BMI", ofType: "mp4")
        
        let url = NSURL(fileURLWithPath: file!)
        let playerController = AVPlayerViewController()
        let player = AVPlayer(url: url as URL)
        playerController.player = player
        self.present(playerController, animated: true)
        player.play()
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
