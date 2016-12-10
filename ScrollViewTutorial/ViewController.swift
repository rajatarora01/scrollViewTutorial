//
//  ViewController.swift
//  ScrollViewTutorial
//
//  Created by Rajat Arora on 10/12/16.
//  Copyright © 2016 mx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(<#T##animated: Bool##Bool#>)
        var images = [UIImage]()
        images = [#imageLiteral(resourceName: "icon0"),#imageLiteral(resourceName: "icon2"),#imageLiteral(resourceName: "Sky"),#imageLiteral(resourceName: "icon1"),#imageLiteral(resourceName: "Sun"),#imageLiteral(resourceName: "Mountains")]
        
        for index in 0..<images.count{
            let imageView = UIImageView()
            
            //adding the image inside the imageView
            imageView.image=images[index]
            
            //setting the contentMode for the Image inside the imageView
            imageView.contentMode = .scaleAspectFit
            
            //generating the xPosition for the imageView such as it always gives the top-left for every image swipe in the scrollview
            let xPosition = (self.scrollView.frame.width * CGFloat(index)) + self.scrollView.frame.midX
            
            //setting the image frame in which image will be displayed
            //Please note that (0,0) co-ordinates determine the top-left of the view not the middle
            //hence here we are making calculations so that we can display the image in the centre of the scrollView
            imageView.frame=CGRect(x: xPosition - self.scrollView.frame.width/4, y: self.scrollView.frame.height/4, width: self.scrollView.frame.width/2, height: self.scrollView.frame.height/2)
            
            //incrementing the contentsize width of the scrollView
            self.scrollView.contentSize.width = self.scrollView.frame.width * CGFloat(index+1)
            
            //adding the imageView inside the scrollView
            self.scrollView.addSubview(imageView)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

